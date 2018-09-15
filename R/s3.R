## Adopted from R.methodsS3 v1.7.1 (2016-04-10)
#' @importFrom codetools findGlobals
isGenericS3 <- local({
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Memoized results
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  tools_internal_S3_generics <- NULL

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  knownInternalGenericS3 <- function(which = 1:4, ...) {
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
      if (is.null(tools_internal_S3_generics)) {
        ns <- getNamespace("tools")
        if (exists(".get_internal_S3_generics", envir = ns, inherits = FALSE)) {
          tools_internal_S3_generics <<- get(".get_internal_S3_generics",
	                                     envir = ns, inherits = FALSE)()
	  } else {
	    tools_internal_S3_generics <<- character(0L)
	  }
      }
      knownGenerics <- c(knownGenerics, tools_internal_S3_generics)
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
    switch(typeof(fcn), special = TRUE, builtin = TRUE, FALSE)
  } # isPrimitive()


  function(fcn, envir = parent.frame(), ...) {
    if (is.character(fcn)) {
      if (isNameInternalGenericS3(fcn)) return(TRUE)
  
      # Does the function even exist?
      # Get the function
      if (!exists(name, mode = "function", envir = envir, inherits = TRUE)) {
        return(FALSE)
      }

      ## Get the function
      fcn <- get(name, mode = "function", envir = envir, inherits = TRUE)
    }
  
    # Check primitive functions
    if (isPrimitive(fcn)) {
      # Scan the body of the function
      body <- deparse(fcn)
      call <- grep(".Primitive[(]", body, value = TRUE)
      call <- gsub(".Primitive[(]\"", "", call)
      call <- gsub("\"[)].*", "", call)
      if (is.element(call, knownInternalGenericS3(which = 2L))) return(TRUE)
    }
  
    # Check with codetools::findGlobals(), otherwise scan the body
    res <- tryCatch({
      fcns <- codetools::findGlobals(fcn, merge = FALSE)$functions
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
  
    # Finally, as a fallback, compare to all known internal generics
    # Note, this is very inefficient.
    for (name in knownInternalGenericS3()) {
      if (exists(name, mode = "function", inherits = TRUE)) {
        generic <- get(name, mode = "function", inherits = TRUE)
        if (identical(fcn, generic)) return(TRUE)
      }
    }
  
    FALSE
  }
}) ## isGenericS3()
