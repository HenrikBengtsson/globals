## This function is equivalent to:
##    fun <- as_function(expr, envir = envir, ...)
##    codetools::findGlobals(fun, merge = TRUE)
## but we expand it here to make it more explicit
## what is going on.
#' @importFrom codetools findLocalsList walkCode
find_globals_conservative <- function(expr, envir, dotdotdot, ..., trace = FALSE) {
  objs <- character()

  enter <- function(type, v, e, w) {
    objs <<- c(objs, v)
  }

  if (is.function(expr)) {
    if (typeof(expr) != "closure") return(character(0L)) # e.g. `<-`
    fun <- expr
    w <- make_usage_collector(fun, name = "<anonymous>", enterGlobal = enter)
    if (trace) w <- inject_tracer_to_walker(w)
    collect_usage_function(fun, name = "<anonymous>", w, trace = trace)
  } else if (is.call(expr) && is.function(expr[[1]])) {
    ## AD HOC: Fixes https://github.com/HenrikBengtsson/globals/issues/60
    for (e in list(expr[[1]], expr[-1])) {
      globals <- find_globals_conservative(expr = e, envir = envir, dotdotdot = dotdotdot, ..., trace = trace)
      if (length(globals) > 0) objs <- c(objs, globals)
    }
  } else {
    ## From codetools::findGlobals():
    fun <- as_function(expr, envir = envir, ...)
    # codetools::collectUsage(fun, enterGlobal = enter)

    ## The latter becomes equivalent to (after cleanup):
    w <- make_usage_collector(fun, name = "<anonymous>", enterGlobal = enter)
    if (trace) w <- inject_tracer_to_walker(w)
    
    locals <- findLocalsList(list(expr))
    for (name in locals) assign(name, value = TRUE, envir = w$env)
    walkCode(expr, w)
  }

  unique(objs)
}


#' @importFrom codetools walkCode
find_globals_liberal <- function(expr, envir, dotdotdot, ..., trace = FALSE) {
  objs <- character()

  enter <- function(type, v, e, w) {
    objs <<- c(objs, v)
  }

  if (is.function(expr)) {
    if (typeof(expr) != "closure") return(character(0L)) ## e.g. `<-`
    fun <- expr
    w <- make_usage_collector(fun, name = "<anonymous>", enterGlobal = enter)
    if (trace) w <- inject_tracer_to_walker(w)
    collect_usage_function(fun, name = "<anonymous>", w, trace = trace)
  } else if (is.call(expr) && is.function(expr[[1]])) {
    ## AD HOC: Fixes https://github.com/HenrikBengtsson/globals/issues/60
    for (e in list(expr[[1]], expr[-1])) {
      globals <- find_globals_liberal(expr = e, envir = envir, dotdotdot = dotdotdot, ..., trace = trace)
      if (length(globals) > 0) objs <- c(objs, globals)
    }
  } else {
    fun <- as_function(expr, envir = envir, ...)
    w <- make_usage_collector(fun, name = "<anonymous>", enterGlobal = enter)
    if (trace) w <- inject_tracer_to_walker(w)
    walkCode(expr, w)
  }

  unique(objs)
}


#' @importFrom codetools walkCode
find_globals_ordered <- function(expr, envir, dotdotdot, ..., name = character(), class = character(), trace = FALSE) {
  selfassign <- getOption("globals.selfassign", TRUE)
  
  enter_local <- function(type, v, e, w) {
    hardcoded_locals <- names(w$env)
    if (trace) {
      message(sprintf("enter_local(type=%s, v=%s): variables (on enter):", sQuote(type), sQuote(v)))
      vars <- data.frame(name=name, class=class, stringsAsFactors = FALSE)
      message(paste(utils::capture.output(print(vars)), collapse = "\n"))
      message("- hardcoded locals: ", paste(sQuote(hardcoded_locals), collapse = ", "))
      on.exit({
      message(sprintf("enter_local(type=%s, v=%s): variables (on exit):", sQuote(type), sQuote(v)))
        vars <- data.frame(name=name, class=class, stringsAsFactors = FALSE)
        message(paste(utils::capture.output(print(vars)), collapse = "\n"))
      })
    }

    is_already_local <- (v %in% hardcoded_locals)
    if (is_already_local) {
      if (trace) message("- variable is a hardcoded local: ", sQuote(v))
    }

    ## LHS <- RHS: Handle cases where a global variable exists in RHS and LHS
    ##             assigns a local variable with the same name, e.g. x <- x + 1.
    ##             In such case we want to detect 'x' as a global variable.
    if (selfassign && (type == "<-" || type == "=")) {
      if (trace) message("- LHS <- RHS")
      rhs <- e[[3]]
      globals <- all.names(rhs)
      if (trace) {
        message("- RHS globals: ", paste(sQuote(globals), collapse = ", "))
      }

      if (length(rhs) == 3 && globals[1] %in% c("::", ":::")) {
        ## Case: a <- pkg::a
      } else if (v %in% globals) {
        class <<- c(class, if (v %in% hardcoded_locals) "local" else "global")
        name <<- c(name, v)
      }
    }

    class <<- c(class, "local")
    name <<- c(name, v)
  }

  enter_global <- function(type, v, e, w) {
    hardcoded_locals <- names(w$env)
    if (trace) {
      message(sprintf("enter_global(type=%s, v=%s): variables (on enter):", sQuote(type), sQuote(v)))
      vars <- data.frame(name=name, class=class, stringsAsFactors = FALSE)
      message(paste(utils::capture.output(print(vars)), collapse = "\n"))
      message("- hardcoded locals: ", paste(sQuote(hardcoded_locals), collapse = ", "))
      on.exit({
        message(sprintf("enter_global(type=%s, v=%s): variables (on exit):", sQuote(type), sQuote(v)))
        vars <- data.frame(name=name, class=class, stringsAsFactors = FALSE)
        message(paste(utils::capture.output(print(vars)), collapse = "\n"))
      })
    }

    is_already_local <- (v %in% hardcoded_locals)
    if (is_already_local) {
      if (trace) {
        message("- variable is a hardcoded local: ", sQuote(v))
      }
    }
    
    class <<- c(class, if (is_already_local) "local" else "global")
    name <<- c(name, v)
    
    ## Also walk formulas to identify globals
    if (type == "function") {
      if (v == "~") {
        if (trace) message("- ~ (formula)")
        stop_if_not(length(e) >= 2L, identical(e[[1]], as.symbol("~")))
        ## Ignoring dots overrides the default of silently returning
        ## them from formulas
        ## Fixes https://github.com/HenrikBengtsson/globals/issues/63
        if (dotdotdot == "ignore") {
          formula_dotdotdot <- "ignore"
        } else {
          formula_dotdotdot <- "return"
        }
        for (kk in 2:length(e)) {
          globals <- call_find_globals_with_dotdotdot(find_globals_ordered, expr = e[[kk]], envir = w$env, dotdotdot = formula_dotdotdot, trace = trace)
            if (length(globals) > 0) {
            class <<- c(class, rep("global", times = length(globals)))
            name <<- c(name, globals)
          }
        }
      } else if (selfassign && (v == "<-" || v == "=")) {
        ## LHS <- RHS: Handle cases where a global variable exists in LHS in
        ##             the form of x[1] <- 0, which will cause 'x' to be called
        ##             a local variable later unless called global here.
        if (trace) message("- LHS <- RHS")
        lhs <- e[[2]]
        if (length(lhs) >= 2) {
          ## Cases: a[1] <- 0, names(a) <- "x", names(a)[1] <- "x"
          ## Skip first symbol, because it'll be handled up later as
          ## an assignment function, e.g. `[<-` and `names<-`
          globals <- find_globals_ordered(expr = lhs, envir = w$env, dotdotdot = dotdotdot, name = hardcoded_locals, class = rep("local", times = length(hardcoded_locals)), trace = trace)
          if (length(globals) > 0) {
            class <<- c(class, rep("global", times = length(globals)))
            name <<- c(name, globals)
          }
        }
      }
    }
  }


  if (trace) {
    message("- find_globals_ordered() ...")
    on.exit(message("- find_globals_ordered() ... done"), add = TRUE)
  }
  
  ## A function or an expression?
  if (is.function(expr)) {
    if (typeof(expr) != "closure") return(character(0L)) ## e.g. `<-`
    if (trace) message("- a function")
    fun <- expr
    w <- make_usage_collector(fun, name = "<anonymous>",
                              enterLocal = enter_local,
                              enterGlobal = enter_global)
    if (trace) w <- inject_tracer_to_walker(w)
    collect_usage_function(fun, name = "<anonymous>", w, trace = trace)
  } else if (is.call(expr) && is.function(expr[[1]])) {
    if (trace) message("- a call to a function")
    ## AD HOC: Fixes https://github.com/HenrikBengtsson/globals/issues/60
    for (e in list(expr[[1]], expr[-1])) {
      globals <- find_globals_ordered(expr = e, envir = envir, dotdotdot = dotdotdot, ..., trace = trace)
      if (length(globals) > 0) {
        class <- c(class, rep("global", times = length(globals)))
        name <- c(name, globals)
      }
    }
  } else {
    if (trace) message("- a call")
    fun <- as_function(expr, envir = envir, ...)
    w <- make_usage_collector(fun, name = "<anonymous>",
                            enterLocal = enter_local,
                            enterGlobal = enter_global)
    if (trace) w <- inject_tracer_to_walker(w)
    walkCode(expr, w)
  }

  if (trace) {
    message(" variables (with duplicates):")
    vars <- data.frame(name=name, class=class, stringsAsFactors = FALSE)
    message(paste(utils::capture.output(print(vars)), collapse = "\n"))
  }

  ## Drop duplicated names
  dups <- duplicated(name)
  class <- class[!dups]
  name <- name[!dups]

  if (trace) {
    message(" variables (no duplicates):")
    vars <- data.frame(name=name, class=class, stringsAsFactors = FALSE)
    message(paste(utils::capture.output(print(vars)), collapse = "\n"))
  }

  unique(name[class == "global"])
}


call_find_globals_with_dotdotdot <- function(FUN, expr, envir, dotdotdot = "error", trace = FALSE, debug = FALSE) {
  ## Is there a need for global '...', '..1', '..2', etc.?
  dotdotdots <- character(0L)
  
  globals <- withCallingHandlers({
    oopts <- options(warn = 0L)
    on.exit(options(oopts))
    FUN(expr, envir = envir, dotdotdot = dotdotdot, trace = trace)
  }, warning = function(w) {
    ## Warned about '...', '..1', '..2', etc.?
    ## NOTE: The warning we're looking for is the one generated by
    ## codetools::findGlobals().  That warning is _not_ translated,
    ## meaning this approach should work as is as long as the message
    ## is not modified by codetools itself.  If codetools ever changes
    ## this such that the below string matching fails, then the package
    ## tests (tests/dotdotdot.R) will detect that.  In other words,
    ## such a change will not go unnoticed.  /HB 2017-03-08
    msg <- w$message
    pattern <- ".* ([.][.]([.]|[0-9]+)) may be used in an incorrect context.*"
    if (grepl(pattern, msg, fixed = FALSE)) {
      debug && mdebug(" - detected: %s", dQuote(trim(msg)))
      if (dotdotdot %in% c("ignore", "return", "warning")) {
        if (dotdotdot != "ignore") {
          dotdotdots <<- c(dotdotdots, gsub(pattern, "\\1", msg))
        }
        if (dotdotdot != "warning") {
          ## Consume / muffle warning
          invokeRestart("muffleWarning")
        }
      } else if (dotdotdot == "error") {
        e <- simpleError(msg, w$call)
        stop(e)
      }
    }
  })
  
  if (length(dotdotdots) > 0L) {
    dotdotdots <- unique(dotdotdots)
    globals <- c(globals, dotdotdots)
  }
  
  globals
}


#' @param attributes If TRUE (default), attributes of `expr` are also searched.
#' If FALSE, they are not.
#' If a character vector, then attributes with matching names are searched.
#' Note, the attributes of the attributes elements are not searched, that is,
#' attributes are not searched recursively.  Also, attributes are searched
#' with `dotdotdot = "ignore".
#'
#' @param dotdotdot TBD.
#'
#' @param trace TBD.
#'
#' @return \code{findGlobals()} returns a character vector.
#'
#' @rdname globalsOf
#' @export
findGlobals <- function(expr, envir = parent.frame(), ...,
                        attributes = TRUE,
                        tweak = NULL,
                        dotdotdot = c("warning", "error", "return", "ignore"),
                        method = c("ordered", "conservative", "liberal"),
                        substitute = FALSE, unlist = TRUE, trace = FALSE) {
  method <- match.arg(method, choices = c("ordered", "conservative", "liberal"))
  dotdotdot <- match.arg(dotdotdot, choices = c("warning", "error", "return", "ignore"))

  if (substitute) expr <- substitute(expr)

  debug <- mdebug("findGlobals(..., dotdotdot = '%s', method = '%s', unlist = %s) ...", dotdotdot, method, unlist)

  if (is.logical(attributes)) {
    stop_if_not(length(attributes) == 1L, !is.na(attributes))
    if (!attributes) attributes <- character(0L)
  } else {
    stop_if_not(is.character(attributes), !anyNA(attributes))
  }
  
  if (is.list(expr)) {
    debug && mdebug(" - expr: <a list of length %d>", .length(expr))

    ## NOTE: Do *not* look for types that we are interested in, but instead
    ## look for types that we are *not* interested.  The reason for this that
    ## in future versions of R there might be new types added that may contain
    ## globals and with this approach those types will also be scanned.
    basicTypes <- c("logical", "integer", "double", "complex", "character",
                    "raw", "NULL")

    ## Skip elements in 'expr' of basic types that cannot contain globals
    types <- unlist(list_apply(expr, FUN = typeof), use.names = FALSE)
    keep <- !(types %in% basicTypes)

    ## Don't use expr[keep] here, because that may use S3 dispatching
    ## depending on class(expr)
    expr <- .subset(expr, keep)

    ## Early stopping?
    if (.length(expr) == 0) {
      debug && mdebug(" - globals found: [0] <none>")
      debug && mdebug("findGlobals(..., dotdotdot = '%s', method = '%s', unlist = %s) ... DONE", dotdotdot, method, unlist) #nolint
      return(character(0L))
    }
    
    globals <- list_apply(expr, FUN = findGlobals, envir = envir,
                      attributes = attributes, ...,
                      tweak = tweak, dotdotdot = dotdotdot,
                      method = method,
                      substitute = FALSE, unlist = FALSE)
    
    keep <- types <- NULL ## Not needed anymore
    
    debug && mdebug(" - preliminary globals found: [%d] %s",
                    length(globals), hpaste(sQuote(names(globals))))

    if (unlist) {
      globals <- unlist(globals, use.names = FALSE)
      if (length(globals) > 1L) globals <- unique(globals)
      ## Move any ..., ..1, ..2, etc. to the very end
      idxs <- grep("^[.][.]([.]|[0-9]+)$", globals)
      if (length(idxs) > 0L) globals <- c(globals[-idxs], globals[idxs])
    }

    debug && mdebug(" - globals found: [%d] %s",
                    length(globals), hpaste(sQuote(globals)))
    debug && mdebug("findGlobals(..., dotdotdot = '%s', method = '%s', unlist = %s) ... DONE", dotdotdot, method, unlist) #nolint
    
    return(globals)
  }

  if (is.function(tweak)) {
    debug && mdebug(" - tweaking expression using function")
    expr <- tweak(expr)
  }

  if (method == "ordered") {
    find_globals_t <- find_globals_ordered
  } else if (method == "conservative") {
    find_globals_t <- find_globals_conservative
  } else if (method == "liberal") {
    find_globals_t <- find_globals_liberal
  }

  globals <- call_find_globals_with_dotdotdot(find_globals_t, expr = expr, envir = envir, dotdotdot = dotdotdot, trace = trace, debug = debug)
  
  ## Search attributes?
  if (length(attributes) > 0) {
    attrs <- attributes(expr)
    if (is.character(attributes)) {
      attrs <- attrs[names(attrs) %in% attributes]
    }

    ## Attributes to be searched, if any
    if (length(attrs) > 0) {
      debug && mdebug(" - searching attributes")
      attrs_globals <- list_apply(attrs, FUN = findGlobals, envir = envir,
                                  ## Don't look for attributes recursively
                                  attributes = FALSE,
                                  tweak = tweak,
                                  ...,
                                  ## Don't complain about '...', '..1', etc.
                                  dotdotdot = "ignore",
                                  method = method,
                                  substitute = FALSE, unlist = FALSE)
      if (unlist) attrs_globals <- unlist(attrs_globals, use.names = FALSE)
      if (length(attrs_globals) > 1L) attrs_globals <- unique(attrs_globals)
      debug && mdebug(" - globals found in attributes: [%d] %s",
                      length(attrs_globals), hpaste(sQuote(attrs_globals)))
      globals <- unique(c(globals, attrs_globals))
    }
  }

  debug && mdebug(" - globals found: [%d] %s", length(globals), hpaste(sQuote(globals)))
  debug && mdebug("findGlobals(..., dotdotdot = '%s', method = '%s', unlist = %s) ... DONE", dotdotdot, method, unlist) #nolint

  globals
}


## Utility functions adopted from codetools:::dropMissing()
## and codetools:::collectUsageFun()
drop_missing_formals <- function(x) {
  nx <- length(x)
  ix <- logical(length = nx)
  for (i in seq_len(nx)) {
    tmp <- x[[i]]
    if (!missing(tmp)) ix[i] <- TRUE
  }
  x[ix]
}

#' @importFrom codetools walkCode findLocalsList
collect_usage_function <- function(fun, name, w, trace = FALSE) {
  if (trace) {
    message("collect_usage_function() ...")
    on.exit(message("collect_usage_function() ... done"))
  }
  
  formals <- formals(fun)
  body <- body(fun)

  w$name <- c(w$name, name)
  parnames <- names(formals)
  if (trace) {
    message("  - parnames: ", paste(sQuote(parnames), collapse = ", "))
  }

  formals_clean <- drop_missing_formals(formals)
#  locals <- findLocalsList(c(list(body), formals_clean))
  locals <- findLocalsList(formals_clean)
  
  if (trace) {
    message("  - formals_clean: ", paste(sQuote(formals_clean), collapse = ", "))
    message("  - locals: ", paste(sQuote(locals), collapse = ", "))
  }

  w$env <- new.env(hash = TRUE, parent = w$env)
  for (n in c(parnames, locals)) assign(n, TRUE, w$env)

  if (trace) {
    message("  - hardcoded locals: ", paste(sQuote(names(w$env)), collapse = ", "))
  }

  for (a in formals_clean) {
    if (trace) message("  - walkCode(", sQuote(a), ") ...")
    walkCode(a, w)
    if (trace) message("  - walkCode(", sQuote(a), ") ... done")
  }

  if (trace) message("  - walkCode(body) ...")
  res <- walkCode(body, w)
  if (trace) message("  - walkCode(body) ... done")
  
  res
}


inject_tracer_to_function <- function(fcn, name) {
  b <- body(fcn)
  f <- formals(fcn)
  args <- setdiff(names(f), c("w", "..."))
  if (length(args) > 0L) {
    args <- grep("^[.][.][0-9]+$", args, invert = TRUE, value = TRUE)
  }
  title <- sprintf("%s()", name)
  b <- bquote({
    message(.(title), ":")
    if (length(.(args)) > 0)
      message(paste(utils::capture.output(utils::str(mget(.(args)))), collapse = "\n"))
    if (!exists("w", mode = "list")) return()
    env <- environment(w$enterLocal)
    n <- length(env$name)
    value <- .(b)
    nnew <- (length(env$name) - n)
    if (nnew) {
      message(" ", .(title), " variables:")
      vars <- data.frame(name=env$name, class=env$class, stringsAsFactors = FALSE)
      vars$added <- c(rep(FALSE, times = n), rep(TRUE, times = nnew))
      message(paste(utils::capture.output(print(vars)), collapse = "\n"))
    }
    message(" ", .(title) , " => ", utils::capture.output(utils::str(value)))
    value
  })
  body(fcn) <- b
  fcn
}

inject_tracer_to_walker <- function(w) {
  if (is.null(w$startCollectLocals)) {
    w$startCollectLocals <- function(parnames, locals, ...) { NULL }
  }
  if (is.null(w$finishCollectLocals)) {
    w$finishCollectLocals <- function(w, ...) { NULL }
  }
  if (is.null(w$enterInternal)) {
    w$enterInternal <- function(type, v, e, ...) { NULL }
  }
  
  for (key in names(w)) {
    fcn <- w[[key]] 
    if (!is.function(fcn)) next
    fcn <- inject_tracer_to_function(fcn, key)
    w[[key]] <- fcn
  }
  
  w
}


#' @importFrom codetools makeUsageCollector walkCode
make_usage_collector <- local({
  ## WORKAROUND: Avoid calling codetools::collectUsageCall() if it hits the
  ## https://bugs.r-project.org/bugzilla/show_bug.cgi?id=17935 bug in the
  ## stats:::`[.formula` function
  ## See also: https://github.com/HenrikBengtsson/globals/issues/64
  if (getRversion() <= "4.0.3" || is.null(ver <- R.version$`svn rev`) ||
      is.na(ver <- as.integer(ver)) || ver < 79355) {
    ## Local copy of codetools:::collectUsageCall()
    .collectUsageCall <- NULL

    collectUsageCall <- function(e, w) {
      e1 <- e[[1]]
      if (is.symbol(e1) && inherits(e, "formula") && is.null(e[[2]])) {
        ## From codetools:::collectUsageCall()
        fn <- as.character(e1)
        if (w$isLocal(fn, w))  {
           w$enterLocal("function", fn, e, w)
        } else {
           w$enterGlobal("function", fn, e, w)
        }
      } else {
        .collectUsageCall(e, w)
      }
    }
    
    function(...) {
      w <- makeUsageCollector(...)
      w$env <- new.env(parent = w$env)
      if (is.function(w$call)) {
        ## Memoize? (to avoid importing a private 'codetools' function)
        if (is.null(.collectUsageCall)) .collectUsageCall <<- w$call
        ## Patch
        w$call <- collectUsageCall
      }
      w
    }
  } else {
    function(...) {
      w <- makeUsageCollector(...)
      w$env <- new.env(hash = TRUE, parent = w$env)
      w
    }
  }
})

