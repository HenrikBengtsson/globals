as_function <- function(expr, envir = parent.frame(), enclos = baseenv(), ...) {
  eval(substitute(function() x, list(x = expr)), envir = envir, enclos = enclos, ...)
}

# Although the set of "base" packages rarely changes, it has happened
# in R's history.  Beause of this, we avoid hardcoding the set of known
# "base" packages and instead always look them up by the 'Priority'
# field in their DESCRIPTION data and cache the results.
#' @importFrom utils packageDescription
is_base_pkg <- local({
  cache <- list()
  function(pkgs) {
    pkgs <- gsub("^package:", "", pkgs)
    npkgs <- length(pkgs)
    res <- rep(FALSE, times = npkgs)
    for (kk in seq_len(npkgs)) {
      pkg <- pkgs[kk]
      value <- cache[[pkg]]
      if (is.null(value)) {
        prio <- packageDescription(pkg, fields = "Priority")
        value <- (!is.na(prio) && prio == "base")
	cache[[pkg]] <<- value
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
  if (!getOption("globals.debug", FALSE)) return()
  message(sprintf(...))
} ## mdebug()

#' @importFrom utils capture.output str
mstr <- function(...) {
  bfr <- capture.output(str(...))
  bfr <- paste(bfr, collapse = "\n")
  message(bfr, appendLF = TRUE)
}

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
