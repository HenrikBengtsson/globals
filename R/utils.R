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

  ## Search
  while (!identical(envir, emptyenv())) {
    if (exists(x, envir=envir, mode=mode, inherits=FALSE)) return(envir)
    if (!inherits) return(NULL)
    envir <- parent.env(envir)
  }

  NULL
}
