as_function <- function(expr, envir = parent.frame(), enclos = baseenv(), ...) {
  fun_expr <- substitute(function() x, list(x = expr))
  eval(fun_expr, envir = envir, enclos = enclos, ...)
}

# Although the set of "base" packages rarely changes, it has happened
# in R's history.  Beause of this, we avoid hardcoding the set of known
# "base" packages and instead always look them up by the 'Priority'
# field in their DESCRIPTION data and cache the results.
#' @importFrom utils packageDescription
is_base_pkg <- local({
  cache <- list(
    R_EmptyEnv  = FALSE,
    R_GlobalEnv = FALSE
  )
  function(pkgs) {
    pkgs <- gsub("^package:", "", pkgs)
    npkgs <- length(pkgs)
    res <- rep(FALSE, times = npkgs)
    for (kk in seq_len(npkgs)) {
      pkg <- pkgs[kk]
      if (nzchar(pkg)) {
        value <- cache[[pkg]]
        if (is.null(value)) {
          prio <- suppressWarnings(packageDescription(pkg, fields = "Priority"))
          value <- (!is.na(prio) && prio == "base")
          cache[[pkg]] <<- value
        }
      } else {
        value <- FALSE
      }
      res[kk] <- value
    }
    res
  }
})

# cf. is.primitive()
is.base <- function(x) {
  if (typeof(x) != "closure") return(FALSE)
  is_base_pkg(environmentName(environment(x)))
}

# cf. is.primitive()
is_internal <- function(x) {
  if (typeof(x) != "closure") return(FALSE)
  body <- deparse(body(x))
  any(grepl(".Internal", body, fixed = TRUE))
}

# Example: base::.C_R_removeTaskCallback
is_native_symbol_info <- function(x) {
  if (!inherits(x, "NativeSymbolInfo")) return(FALSE)
  if (typeof(x) != "list") return(FALSE)
  address <- x$address
  if (!inherits(address, "RegisteredNativeSymbol")) return(FALSE)
  TRUE
}

isPackageNamespace <- function(env) {
  if (!is.environment(env)) return(FALSE)
  name <- environmentName(env)
  if (name == "base") return(TRUE)
  packageName <- env$.packageName
  if (identical(name, packageName)) return(TRUE)
  if (!grepl("^package:", name)) return(FALSE)
  (name %in% search())
}

# From future 1.18.0
asPkgEnvironment <- function(pkg) {
  name <- sprintf("package:%s", pkg)
  if (!name %in% search()) return(emptyenv())
  as.environment(name)
}

## From R.utils 2.0.2 (2015-05-23)
hpaste <- function(..., sep="", collapse=", ", last_collapse=NULL,
                   max_head=if (missing(last_collapse)) 3 else Inf,
                   max_tail=if (is.finite(max_head)) 1 else Inf,
                   abbreviate="...") {
  max_head <- as.double(max_head)
  max_tail <- as.double(max_tail)
  if (is.null(last_collapse)) last_collapse <- collapse

  # Build vector 'x'
  x <- paste(..., sep = sep)
  n <- length(x)

  # Nothing todo?
  if (n == 0) return(x)
  if (is.null(collapse)) return(x)

  # Abbreviate?
  if (n > max_head + max_tail + 1) {
    head <- x[seq_len(max_head)]
    tail <- rev(rev(x)[seq_len(max_tail)])
    x <- c(head, abbreviate, tail)
    n <- length(x)
  }

  if (!is.null(collapse) && n > 1) {
    if (last_collapse == collapse) {
      x <- paste(x, collapse = collapse)
    } else {
      x_head <- paste(x[1:(n - 1)], collapse = collapse)
      x <- paste(x_head, x[n], sep = last_collapse)
    }
  }

  x
}


## From future 0.11.0
trim <- function(s) {
  sub("[\t\n\f\r ]+$", "", sub("^[\t\n\f\r ]+", "", s))
} # trim()


## From future 0.11.0
hexpr <- function(expr, trim = TRUE, collapse = "; ", max_head = 6L,
                  max_tail = 3L, ...) {
  code <- deparse(expr)
  if (trim) code <- trim(code)
  hpaste(code, collapse = collapse,
         max_head = max_head, max_tail = max_tail, ...)
} # hexpr()


## From future 1.3.0
mdebug <- function(...) {
  if (!getOption("globals.debug", FALSE)) return(invisible(FALSE))
  message(sprintf(...))
  invisible(TRUE)
} ## mdebug()

#' @importFrom utils capture.output str
mstr <- function(...) {
  bfr <- capture.output(str(...))
  bfr <- paste(bfr, collapse = "\n")
  message(bfr, appendLF = TRUE)
}

#' @importFrom utils capture.output
envname <- function(env) {
  if (!is.environment(env)) return(NA_character_)
  name <- environmentName(env)
  if (name == "") {
    class <- class(env)
    if (identical(class, "environment")) {
      ## e.g. new.env()
      name <- capture.output(print(env))
    } else {
      ## It might be that 'env' is on a class that extends 'environment',
      ## e.g. R.oo::Object() or R6::R6Class().
      ## IMPORTANT: The unset class must be temporary, because changing
      ## the class of an environment will
      name <- local({
        on.exit(class(env) <- class)
        class(env) <- NULL
        capture.output(print(env))
      })	
    }
    if (length(name) > 1L) name <- name[1]
    name <- gsub("(.*: |>)", "", name)
  } else {
    ## e.g. globals:::where("plan")
    name <- gsub("package:", "", name, fixed = TRUE)
  }
  name
}

## When 'default' is specified, this is 30x faster than
## base::getOption().  The difference is that here we use
## use names(.Options) whereas in 'base' names(options())
## is used.
getOption <- local({
  go <- base::getOption
  function(x, default = NULL) {
    if (missing(default) || match(x, table = names(.Options), nomatch = 0L) > 0L) go(x) else default
  }
})

stop_if_not <- function(...) {
  res <- list(...)
  n <- length(res)
  if (n == 0L) return()

  for (ii in 1L:n) {
    res_ii <- .subset2(res, ii)
    if (length(res_ii) != 1L || is.na(res_ii) || !res_ii) {
        mc <- match.call()
        call <- deparse(mc[[ii + 1]], width.cutoff = 60L)
        if (length(call) > 1L) call <- paste(call[1L], "...")
        stop(sQuote(call), " is not TRUE", call. = FALSE, domain = NA)
    }
  }
}



#' Gets the length of an object without dispatching
#'
#' @param x Any \R object.
#'
#' @return A non-negative integer.
#'
#' @details
#' This function returns \code{length(unclass(x))}, but tries to avoid
#' calling \code{unclass(x)} unless necessary.
#' 
#' @seealso \code{\link{.subset}()} and \code{\link{.subset2}()}.
#' 
#' @keywords internal
#' @rdname private_length
#' @importFrom utils getS3method
.length <- function(x) {
  nx <- length(x)
  
  ## Can we trust base::length(x), i.e. is there a risk that there is
  ## a method that overrides with another definition?
  classes <- class(x)
  if (length(classes) == 1L && classes == "list") return(nx)

  ## Identify all length() methods for this object
  for (class in classes) {
    fun <- getS3method("length", class, optional = TRUE)
    if (!is.null(fun)) {
      nx <- length(unclass(x))
      break
    }
  }

  nx
} ## .length()


## An lapply(X) without internal X <- as.list(X), without setting names,
## and without dispatching using `[[`.
list_apply <- function(X, FUN, ...) {
  n <- .length(X)
  res <- vector("list", length = n)
  for (kk in seq_len(n)) {
    res[[kk]] <- FUN(.subset2(X, kk), ...)
  }
  res
}


.trace <- new.env()
.trace$indent <- 0L

trace_indent <- function(x = "", indent = .trace$indent) {
#  utils::str(list(indent = indent))
#  indent <- max(0L, indent)
  prefix <- paste(rep(" ", times = 3*indent), collapse = "")
  paste(prefix, x, sep = "")
}

trace_printf <- function(..., indent = .trace$indent, collapse = "\n", appendLF = FALSE) {
  msg <- sprintf(...)
  out <- trace_indent(msg, indent = indent)
  out <- paste(out, collapse = collapse)
  message(out, appendLF = appendLF)
  invisible(msg)
}

#' @importFrom utils capture.output
trace_print <- function(..., envir = parent.frame(), indent = .trace$indent, collapse = "\n", appendLF = TRUE) {
  bfr <- eval(capture.output(print(...)), envir = envir)
  trace_printf(bfr, indent = indent, collapse = collapse, appendLF = appendLF)
}

#' @importFrom utils capture.output str
trace_str <- function(..., envir = parent.frame(), indent = .trace$indent, collapse = "\n", appendLF = TRUE) {
  bfr <- eval(capture.output(str(...)), envir = envir)
  trace_printf(bfr, indent = indent, collapse = collapse, appendLF = appendLF)
}

trace_enter <- function(..., appendLF = TRUE) {
  msg <- trace_printf(..., appendLF = FALSE)
  message(" ...", appendLF = appendLF)
  .trace$indent <- .trace$indent + 1L
  attr(msg, "indent") <- .trace$indent
  invisible(msg)
}

trace_exit <- function(fmtstr, ..., appendLF = TRUE) {
  indent <- attr(fmtstr, "indent")
  if (!is.null(indent)) .trace$indent <- indent
  .trace$indent <- .trace$indent - 1L
  msg <- trace_printf(fmtstr, ..., appendLF = FALSE)
  message(" ... done", appendLF = appendLF)
#  stop_if_not(.trace$indent >= 0L)
  invisible(msg)
}
