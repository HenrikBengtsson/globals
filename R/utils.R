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


#' @importFrom utils capture.output
envname <- function(env) {
  name <- environmentName(env)
  if (name == "") {
    ## e.g. new.env()
    name <- capture.output(print(env))
    name <- gsub("(.*: |>)", "", name)
  } else {
    ## e.g. globals:::where("plan")
    name <- gsub("package:", "", name, fixed = TRUE)
  }
  name
}
