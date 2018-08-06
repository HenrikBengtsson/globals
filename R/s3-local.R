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
  if (!is.function(fcn)) return(FALSE)
  
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
  n_globals <- length(globals)

  ## Nothing to do?
  if (n_globals == 0L) return(globals)
  
  globalsS3 <- vector("list", length=n_globals)
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
