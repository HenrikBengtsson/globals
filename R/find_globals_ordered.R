#' @importFrom codetools walkCode
find_globals_ordered <- function(expr, envir, dotdotdot, ..., name = character(), class = character(), trace = FALSE) {
  selfassign <- getOption("globals.selfassign", TRUE)

  ## Identified objects are recorded in (name, class), which
  ## are located in this executation environment
  
  enter_local <- function(type, v, e, w) {
    hardcoded_locals <- names(w$env)
    if (trace) {
      trace_msg <- trace_enter("enter_local(type=%s, v=%s)", sQuote(type), sQuote(v))
      trace_printf("before:\n")
      trace_print(data.frame(name=name, class=class, stringsAsFactors = FALSE))
      trace_printf("hardcoded locals: [n=%d] %s\n", length(hardcoded_locals), paste(sQuote(hardcoded_locals), collapse = ", "))
      on.exit(local({
        trace_printf("after:\n")
        trace_print(data.frame(name=name, class=class, stringsAsFactors = FALSE))
        trace_exit(trace_msg)
      }))
    }

    is_already_local <- (v %in% hardcoded_locals)
    if (is_already_local) {
      if (trace) trace_printf("variable is a hardcoded local: %s\n", sQuote(v))
    }

    ## LHS <- RHS: Handle cases where a global variable exists in RHS and LHS
    ##             assigns a local variable with the same name, e.g. x <- x + 1.
    ##             In such case we want to detect 'x' as a global variable.
    if (selfassign && (type == "<-" || type == "=")) {
      if (trace) trace_printf("LHS <- RHS:\n")
      rhs <- e[[3]]
      globals <- call_find_globals_with_dotdotdot(find_globals_ordered, expr = rhs, envir = w$env, dotdotdot = "ignore", trace = trace)
      if (trace) {
        trace_printf("RHS globals: [n=%d] %s\n", length(globals), paste(sQuote(globals), collapse = ", "))
        trace_printf("hardcoded locals: [n=%d] %s\n", length(w$env), paste(sQuote(names(w$env)), collapse = ", "))
      }

      if (length(rhs) == 3 && globals[1] %in% c("::", ":::")) {
        ## Case: a <- pkg::a
      } else if (v %in% globals) {
        v_class <- if (v %in% hardcoded_locals) "local" else "global"
        if (trace) trace_printf("Add %s variable %s\n", sQuote(v_class), sQuote(v))
        class <<- c(class, v_class)
        name <<- c(name, v)
      }
    }

    if (trace) trace_printf("Add %s variable %s\n", sQuote("local"), sQuote(v))
    class <<- c(class, "local")
    name <<- c(name, v)
  } ## enter_local()

  enter_global <- function(type, v, e, w) {
    hardcoded_locals <- names(w$env)
    if (trace) {
      trace_msg <- trace_enter("enter_global(type=%s, v=%s)", sQuote(type), sQuote(v))
      trace_printf("before:\n")
      trace_print(data.frame(name=name, class=class, stringsAsFactors = FALSE))
      trace_printf("hardcoded locals: [n=%d] %s\n", length(hardcoded_locals), paste(sQuote(hardcoded_locals), collapse = ", "))
      on.exit(local({
        trace_printf("after:\n")
        trace_print(data.frame(name=name, class=class, stringsAsFactors = FALSE))
        trace_exit(trace_msg)
      }))
    }

    is_already_local <- (v %in% hardcoded_locals)
    if (is_already_local) {
      if (trace) {
        trace_printf("variable is a hardcoded local: %s\n", sQuote(v))
      }
    }

    v_class <- if (is_already_local) "local" else "global"
    if (trace) trace_printf("Add %s variable %s\n", sQuote(v_class), sQuote(v))
    class <<- c(class, v_class)
    name <<- c(name, v)

    ## Also walk formulas to identify globals
    if (type == "function") {
      if (v == "~") {
        if (trace) trace_printf("type = ~ (formula)\n")
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
            if (trace) trace_printf("Add %s variables %s\n", sQuote("global"), paste(sQuote(globals), collapse = ", "))
            class <<- c(class, rep("global", times = length(globals)))
            name <<- c(name, globals)
          }
        }
      } else if (selfassign && (v == "<-" || v == "=")) {
        ## LHS <- RHS: Handle cases where a global variable exists in LHS in
        ##             the form of x[1] <- 0, which will cause 'x' to be called
        ##             a local variable later unless called global here.
        if (trace) trace_printf("LHS <- RHS:\n")
        lhs <- e[[2]]
        if (length(lhs) >= 2) {
          ## Cases: a[1] <- 0, names(a) <- "x", names(a)[1] <- "x"
          ## Skip first symbol, because it'll be handled up later as
          ## an assignment function, e.g. `[<-` and `names<-`
          globals <- find_globals_ordered(expr = lhs, envir = w$env, dotdotdot = dotdotdot, name = hardcoded_locals, class = rep("local", times = length(hardcoded_locals)), trace = trace)
          if (length(globals) > 0) {
            if (trace) trace_printf("Add %s variables %s\n", sQuote("global"), paste(sQuote(globals), collapse = ", "))
            class <<- c(class, rep("global", times = length(globals)))
            name <<- c(name, globals)
          }
        }
      } else {
        if (trace) trace_printf("=> A function, but not of interest\n")
      }
    } else {
      if (trace) trace_printf("=> Nothing to else to explore\n")
    }
  } ## enter_global()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Main
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (trace) {
    trace_msg <- trace_enter("find_globals_ordered()")
    on.exit(trace_exit(trace_msg))
  }
  
  ## A function or an expression?
  if (is.function(expr)) {
    if (typeof(expr) != "closure") {
    if (trace) trace_printf("typeof != closure\n")
      return(character(0L)) ## e.g. `<-`
    }
    if (trace) trace_printf("type = function\n")
    fun <- expr
    w <- make_usage_collector(fun, name = "<anonymous>",
                              enterLocal = enter_local,
                              enterGlobal = enter_global)
    if (trace) w <- inject_tracer_to_walker(w)
    collect_usage_function(fun, name = "<anonymous>", w, trace = trace)
  } else if (is.call(expr) && is.function(expr[[1]])) {
    if (trace) trace_printf("type = a call to a function\n")
    ## AD HOC: Fixes https://github.com/HenrikBengtsson/globals/issues/60
    for (e in list(expr[[1]], expr[-1])) {
      globals <- find_globals_ordered(expr = e, envir = envir, dotdotdot = dotdotdot, ..., trace = trace)
      if (length(globals) > 0) {
        class <- c(class, rep("global", times = length(globals)))
        name <- c(name, globals)
      }
    }
  } else if (is.call(expr) && is.symbol(expr[[1]]) && expr[[1]] == "{") {
    if (trace) trace_printf("type = {\n")
    class <- c(class, "global")
    name <- c(name, "{")
    nexpr <- length(expr)
    if (trace) trace_printf("length(expr) = %d\n", nexpr)
    if (nexpr >= 2) {
      for (kk in 2:nexpr) {
        e <- expr[[kk]]
        globals <- find_globals_ordered(expr = e, envir = envir, dotdotdot = dotdotdot, ..., trace = trace)
        if (length(globals) > 0) {
          if (trace) trace_printf("Add %s variable %s\n", sQuote("global"), paste(sQuote(globals), collapse = ", "))
          class <- c(class, rep("global", times = length(globals)))
          name <- c(name, globals)
        }
        locals <- codetools::findLocals(e)
        if (length(locals) > 0) {
          if (trace) trace_printf("Add %s variable %s\n", sQuote("local"), paste(sQuote(locals), collapse = ", "))
          class <- c(class, rep("locals", times = length(locals)))
          name <- c(name, locals)
        }
      }
    }
  } else {
    if (trace) trace_printf("type = call\n")
    if (trace) trace_printf("Convert to an anonymous function:\n")
    fun <- as_function(expr, envir = envir, ...)
    if (trace) trace_print(fun)
    w <- make_usage_collector(fun, name = "<anonymous>",
                              enterLocal = enter_local,
                              enterGlobal = enter_global)
    if (trace) w <- inject_tracer_to_walker(w)
    walkCode(expr, w)
  }

  if (trace) local({
    trace_printf("variables (with duplicates):\n")
    trace_print(data.frame(name=name, class=class, stringsAsFactors = FALSE))
  })

  ## Drop duplicated names
  dups <- duplicated(name)
  class <- class[!dups]
  name <- name[!dups]

  if (trace) local({
    trace_printf("variables (no duplicates):\n")
    trace_print(data.frame(name=name, class=class, stringsAsFactors = FALSE))
  })

  unique(name[class == "global"])
}


call_find_globals_with_dotdotdot <- function(FUN, expr, envir, dotdotdot = "error", trace = FALSE, debug = FALSE) {
  if (trace) {
    trace_msg <- trace_enter("call_find_globals_with_dotdotdot(dotdotdot = %s)", sQuote(dotdotdot))
    on.exit(trace_exit(trace_msg))
  }

  ## Is there a need for global '...', '..1', '..2', etc.?
  dotdotdots <- character(0L)
  
  globals <- withCallingHandlers({
    oopts <- options(warn = 0L)
    on.exit(options(oopts), add = TRUE)
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

  if (trace) {
    trace_printf("globals: [n=%d] %s\n", length(globals), paste(sQuote(globals), collapse = ", "))
  }

  if (length(dotdotdots) > 0L) {
    dotdotdots <- unique(dotdotdots)
    if (trace) {
      trace_printf("dotdotdots: [n=%d] %s\n", length(dotdotdot), paste(sQuote(dotdotdots), collapse = ", "))
    }
    globals <- c(globals, dotdotdots)
  }
  
  globals
}
