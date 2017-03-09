asFunction <- function(expr, envir=parent.frame(), ...) {
  eval(substitute(function() x, list(x=expr)), envir=envir, ...)
}

#' @importFrom utils installed.packages
findBasePkgs <- local({
  pkgs <- NULL
  function() {
    if (length(pkgs) > 0L) return(pkgs)
    data <- installed.packages()
    isBase <- (data[,"Priority"] %in% "base")
    pkgs <<- rownames(data)[isBase]
    pkgs
  }
})

isBasePkgs <- function(pkgs) {
  pkgs <- gsub("^package:", "", pkgs)
  pkgs %in% findBasePkgs()
}

# cf. is.primitive()
is.base <- function(x) {
  if (typeof(x) != "closure") return(FALSE)
  isBasePkgs(environmentName(environment(x)))
}

# cf. is.primitive()
is.internal <- function(x) {
  if (typeof(x) != "closure") return(FALSE)
  body <- deparse(body(x))
  any(grepl(".Internal", body, fixed=TRUE))
}

## Emulates R internal findVar1mode() function
## https://svn.r-project.org/R/trunk/src/main/envir.c
where <- function(x, where=-1, envir=if (missing(frame)) { if (where < 0) parent.frame(-where) else as.environment(where) } else sys.frame(frame), frame, mode="any", inherits=TRUE) {
  tt <- 1
  ## Validate arguments
  stopifnot(is.environment(envir))
  stopifnot(is.character(mode), length(mode) == 1L)
  inherits <- as.logical(inherits)
  stopifnot(inherits %in% c(FALSE, TRUE))

  mdebug("where(%s, where = %d, envir = %s, mode = %s, inherits = %s) ...", sQuote(x), where, sQuote(envname(envir)), sQuote(mode), inherits)
  
  ## Search
  while (!identical(envir, emptyenv())) {
    mdebug("- searching location: %s", sQuote(envname(envir)))
    mdebug("- content of %s: %s", sQuote(envname(envir)), hpaste(sQuote(ls(envir = envir, all.names = TRUE))))
    if (exists(x, envir=envir, mode=mode, inherits=FALSE)) {
      mdebug("  + found in location: %s", sQuote(envname(envir)))
      mdebug("where(%s, where = %d, envir = %s, mode = %s, inherits = %s) ... DONE", sQuote(x), where, sQuote(envname(envir)), sQuote(mode), inherits)
      return(envir)
    }
    
    if (!inherits) {
      mdebug("  + failed to located: NULL")
      mdebug("where(%s, where = %d, envir = %s, mode = %s, inherits = %s) ... DONE", sQuote(x), where, sQuote(envname(envir)), sQuote(mode), inherits)
      return(NULL)
    }
    
    envir <- parent.env(envir)
  }

  mdebug("- failed to located: NULL")
  mdebug("where(%s, where = %d, envir = %s, mode = %s, inherits = %s) ... DONE", sQuote(x), where, sQuote(envname(envir)), sQuote(mode), inherits)
  
  NULL
}


hpaste <- function(..., sep="", collapse=", ", lastCollapse=NULL, maxHead=3L, maxTail=1L, abbreviate="...") {
  if (is.null(lastCollapse)) lastCollapse <- collapse

  # Build vector 'x'
  x <- paste(..., sep=sep)
  n <- length(x)

  # Nothing todo?
  if (n == 0) return(x)
  if (is.null(collapse)) return(x)

  # Abbreviate?
  if (n > maxHead + maxTail + 1) {
    head <- x[seq_len(maxHead)]
    tail <- rev(rev(x)[seq_len(maxTail)])
    x <- c(head, abbreviate, tail)
    n <- length(x)
  }

  if (!is.null(collapse) && n > 1) {
    if (lastCollapse == collapse) {
      x <- paste(x, collapse=collapse)
    } else {
      xT <- paste(x[1:(n-1)], collapse=collapse)
      x <- paste(xT, x[n], sep=lastCollapse)
    }
  }

  x
} # hpaste()


## From future 0.11.0
trim <- function(s) {
  sub("[\t\n\f\r ]+$", "", sub("^[\t\n\f\r ]+", "", s))
} # trim()


## From future 0.11.0
hexpr <- function(expr, trim=TRUE, collapse="; ", maxHead=6L, maxTail=3L, ...) {
  code <- deparse(expr)
  if (trim) code <- trim(code)
  hpaste(code, collapse=collapse, maxHead=maxHead, maxTail=maxTail, ...)
} # hexpr()


## From future 1.3.0
mdebug <- function(...) {
  if (!getOption("globals.debug", FALSE)) return()
  message(sprintf(...))
} ## mdebug()


envname <- function(env) {
  name <- environmentName(env)
  if (name == "") {
    name <- capture.output(print(env))
    name <- gsub("(.*: |>)", "", name)
  }
  name
}
