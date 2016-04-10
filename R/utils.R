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

  ## Search
  while (!identical(envir, emptyenv())) {
    if (exists(x, envir=envir, mode=mode, inherits=FALSE)) return(envir)
    if (!inherits) return(NULL)
    envir <- parent.env(envir)
  }

  NULL
}


## From R.utils 2.0.2 (2015-05-23)
hpaste <- function(..., sep="", collapse=", ", lastCollapse=NULL, maxHead=if (missing(lastCollapse)) 3 else Inf, maxTail=if (is.finite(maxHead)) 1 else Inf, abbreviate="...") {
  if (is.null(lastCollapse)) lastCollapse <- collapse

  # Build vector 'x'
  x <- paste(..., sep=sep)
  n <- length(x)

  # Nothing todo?
  if (n == 0) return(x)
  if (is.null(collapse)) return(x)

  # Abbreviate?
  if (n > maxHead + maxTail + 1) {
    head <- x[seq(length=maxHead)]
    tail <- rev(rev(x)[seq(length=maxTail)])
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


## Adopted from R.methodsS3 v1.7.1 (2016-04-10)
.findFunction <- function(name, envir, inherits=rep(FALSE, times=length(envir))) {
  # Argument 'envir':
  if (!is.list(envir)) envir <- list(envir)
  n <- length(envir)

  # Argument 'inherits':
  inherits <- as.logical(inherits)
  stopifnot(length(inherits) == n)

  fcn <- pkg <- NULL
  for (kk in seq_along(envir)) {
    env <- envir[[kk]]
    inh <- inherits[kk]
    if (exists(name, mode="function", envir=env, inherits=inh)) {
      fcn <- get(name, mode="function", envir=env, inherits=inh)
      pkg <- attr(env, "name")
      if (is.null(pkg)) {
        pkg <- "base"
        if (identical(env, baseenv())) {
        } else if (identical(env, globalenv())) {
          pkg <- "<R_GlobalEnv>"
        }
      } else {
        pkg <- gsub("^package:", "", pkg)
      }
      break
    }
  } # for (kk ...)

  list(fcn=fcn, pkg=pkg)
} # .findFunction()

## Adopted from R.methodsS3 v1.7.1 (2016-04-10)
isGenericS3 <- function(fcn, envir=parent.frame(), ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  knownInternalGenericS3 <- function(fcn, which=1:4, ...) {
    knownGenerics <- NULL

    # Get the name of all known S3 generic functions
    if (any(which == 1L)) {
      knownGenerics <- c(knownGenerics, names(.knownS3Generics))
    }

    if (any(which == 2L)) {
      knownGenerics <- c(knownGenerics, .S3PrimitiveGenerics)
    }

    # tools:::.get_internal_S3_generics() if available
    if (any(which == 3L)) {
      ns <- getNamespace("tools")
      if (exists(".get_internal_S3_generics", envir=ns, inherits=FALSE)) {
        names <- get(".get_internal_S3_generics", envir=ns, inherits=FALSE)()
        knownGenerics <- c(knownGenerics, names)
      }
    }

    # Manually added, cf. ?cbind
    if (any(which == 4L)) {
      names <- c("cbind", "rbind")
      knownGenerics <- c(knownGenerics, names)
    }

    # Is it one of the known S3 generic functions?
    knownGenerics <- unique(knownGenerics)

    knownGenerics
  } # knownInternalGenericS3()

  isNameInternalGenericS3 <- function(fcn, ...) {
    is.element(fcn, knownInternalGenericS3())
  } # isNameInternalGenericS3()

  isPrimitive <- function(fcn, ...) {
    switch(typeof(fcn), special=TRUE, builtin=TRUE, FALSE)
  } # isPrimitive()


  if (is.character(fcn)) {
    if (isNameInternalGenericS3(fcn)) return(TRUE)

    # Get the function
    fcn <- .findFunction(fcn, envir=envir, inherits=TRUE)$fcn

    # Does it even exist?
    if (is.null(fcn)) {
      return(FALSE)
    }
  }

  # Check with codetools::findGlobals(), if available,
  # otherwise scan the body
  res <- tryCatch({
    ns <- getNamespace("codetools")
    findGlobals <- get("findGlobals", mode="function", envir=ns)
    fcns <- findGlobals(fcn, merge=FALSE)$functions
    is.element("UseMethod", fcns)
  }, error = function(ex) {
    # Scan the body of the function
    body <- body(fcn)
    if (is.call(body))
      body <- deparse(body)
    body <- as.character(body)
    (length(grep("UseMethod[(]", body)) > 0L)
  })
  if (isTRUE(res)) return(TRUE)

  # Check primitive functions
  if (isPrimitive(fcn)) {
    # Scan the body of the function
    body <- deparse(fcn)
    call <- grep(".Primitive[(]", body, value=TRUE)
    call <- gsub(".Primitive[(]\"", "", call)
    call <- gsub("\"[)].*", "", call)
    if (is.element(call, knownInternalGenericS3(2L))) return(TRUE)
  }

  # Finally, compare to all known internal generics
  for (name in knownInternalGenericS3()) {
    if (exists(name, mode="function", inherits=TRUE)) {
      generic <- get(name, mode="function", inherits=TRUE)
      if (identical(fcn, generic)) return(TRUE)
    }
  }

  FALSE
} ## isGenericS3()

#' @importFrom utils methods
s3GlobalsOf <- function(name, envir=parent.frame()) {
  data <- methods(name)
  data <- attr(data, "info")

  ## Names of the S3 methods
  mthds <- rownames(data)
  names(mthds) <- mthds

  ## Locations of S3 methods
  where <- as.character(data$from)
  uwhere <- unique(where)
  names(uwhere) <- uwhere
  uwhere <- lapply(uwhere, FUN=function(w) {
    if (w == ".GlobalEnv") return(.GlobalEnv)
    w <- sub("package:", "", w, fixed=TRUE)   ## For R (<= 3.1.3)
    w <- sub("namespace:", "", w, fixed=TRUE) ## Just in case
    asNamespace(w)
  })
  where <- uwhere[where]
  names(where) <- mthds

  ## Import the S3 methods
  mthds <- mapply(mthds, where, FUN=function(name, envir) {
    get(name, envir=envir, mode="function")
  })
  attr(mthds, "where") <- where

  Globals(mthds)
} ## s3GlobalsOf()


addS3Methods <- function(globals, envir=parent.frame(), recursive=FALSE) {
  globalsS3 <- vector("list", length=length(globals))
  names(globalsS3) <- names(globals)

  for (kk in seq_along(globals)) {
    fcn <- globals[[kk]]
    if (!isGenericS3(fcn)) next
    name <- names(globals)[kk]
    where <- attr(globals, "where")[[kk]]
    globalsKK <- s3GlobalsOf(name, envir=envir)
    globalsS3[[kk]] <- globalsKK
  }

  ## Drop empty sets
  keep <- !unlist(lapply(globalsS3, FUN=is.null))
  globalsS3 <- globalsS3[keep]

  ## Nothing to do?
  if (length(globalsS3) == 0) return(globals)

  globalsS3 <- Reduce(c, globalsS3)
  globals <- c(globals, globalsS3)

  globals
} ## addS3Methods()
