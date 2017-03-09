#' Get all global objects of an expression
#'
#' @param expr An R expression.
#'
#' @param envir The environment from where to search for globals.
#'
#' @param \dots Not used.
#'
#' @param method A character string specifying what type of search algorithm to use.
#'
#' @param tweak An optional function that takes an expression
#'        and returns a tweaked expression.
#'
#' @param substitute If TRUE, the expression is \code{substitute()}:ed,
#'        otherwise not.
#'
#' @param mustExist If TRUE, an error is thrown if the object of the
#'        identified global cannot be located.  Otherwise, the global
#'        is not returned.
#'
#' @param unlist If TRUE, a list of unique objects is returned.
#'        If FALSE, a list of \code{length(expr)} sublists.
#'
#' @param recursive If TRUE, globals that are closures (functions) and that
#'        exist outside of namespaces ("packages"), will be recursively
#'        scanned for globals.
#'
#' @return A \link{Globals} object.
#'
#' @details
#' There currently three methods for identifying global objects.
#'
#' The \code{"ordered"} search method identifies globals such that
#' a global variable preceding a local variable with the same name
#' is not dropped (which the \code{"conservative"} method would).
#'
#' The \code{"conservative"} search method tries to keep the number
#' of false positive to a minimum, i.e. the identified objects are
#' most likely true global objects.  At the same time, there is
#' a risk that some true globals are not identified (see example).
#' This search method returns the exact same result as the
#' \code{\link[codetools]{findGlobals}()} function of the
#' \pkg{codetools} package.
#'
#' The \code{"liberal"} search method tries to keep the
#' true-positive ratio as high as possible, i.e. the true globals
#' are most likely among the identified ones.  At the same time,
#' there is a risk that some false positives are also identified.
#'
#' With \code{recursive = TRUE}, globals part of locally defined
#' functions will also be found, otherwise not.
#'
#' @example incl/globalsOf.R
#'
#' @seealso
#' Internally, the \pkg{\link{codetools}} package is utilized for
#' code inspections.
#'
#' @aliases findGlobals
#' @export
globalsOf <- function(expr, envir=parent.frame(), ..., method=c("ordered", "conservative", "liberal"), tweak=NULL, substitute=FALSE, mustExist=TRUE, unlist=TRUE, recursive=TRUE) {
  method <- match.arg(method)

  if (substitute) expr <- substitute(expr)

  mdebug("globalsOf(..., method = '%s', mustExist = %s, unlist = %s, recursive = %s) ...", method, mustExist, unlist, recursive)
  
  ## 1. Identify global variables (static code inspection)
  names <- findGlobals(expr, envir=envir, ..., method=method, tweak=tweak, substitute=FALSE, unlist=unlist)
  mdebug(" - preliminary globals (by name): [%d] %s", length(names), hpaste(sQuote(names)))
  
  ## 2. Locate them (run time)
  globals <- tryCatch({
    globalsByName(names, envir=envir, mustExist=mustExist)
  }, error = function(ex) {
    ## HACK: Tweak error message to also include the expression inspected.
    msg <- conditionMessage(ex)
    msg <- sprintf("Identified global objects via static code inspection (%s). %s", hexpr(expr), msg)
    ex$message <- msg
    stop(ex)
  })

  mdebug(" - preliminary globals (by value): [%d] %s", length(globals), hpaste(sQuote(names(globals))))
  
  ## 3. Among globals that are closures (functions) and that exist outside
  ##    of namespaces ("packages"), check for additional globals?
  if (recursive) {
    mdebug(" - recursive scan of preliminary globals ...")

    ## Don't enter functions in namespaces / packages
    where <- attr(globals, "where")
    stopifnot(length(where) == length(globals))
    where <- sapply(where, FUN = envname)
    globalsT <- globals[!(where %in% loadedNamespaces())]

    mdebug(" - subset of globals to be scanned (not in loaded namespaces): [%d] %s", length(globalsT), hpaste(sQuote(names(globalsT))))
    
    ## Enter only functions
    ## NOTE: This excludes functions "not found", but also primitives not dropped above.
    globalsT <- globalsT[sapply(globalsT, FUN = typeof) == "closure"]
        
    if (length(globalsT) > 0) {
      mdebug(" - subset of globals to be scanned: [%d] %s", length(globalsT), hpaste(sQuote(names(globalsT))))
      namesT <- names(globalsT)
      for (gg in seq_along(globalsT)) {
        mdebug("   + scanning global #%d (%s) ...", gg, sQuote(namesT[[gg]]))
        fcn <- globalsT[[gg]]
        env <- environment(fcn) ## was 'env <- envir' in globals 0.8.0.
	globalsGG <- globalsOf(fcn, envir=env, ..., method=method, tweak=tweak, substitute=FALSE, mustExist=mustExist, unlist=unlist, recursive=recursive)
	if (length(globalsGG) > 0) {
	  globals <- c(globals, globalsGG)
	}
      }
      globals <- unique(globals)
      mdebug(" - updated set of globals found: [%d] %s", length(globals), hpaste(sQuote(names(globals))))
    } else {
      mdebug(" - subset of globals to be scanned: [0]")
    }
    
    mdebug(" - recursive scan of preliminary globals ... DONE")
  }

  mdebug(" - globals found: [%d] %s", length(globals), hpaste(sQuote(names(globals))))
  
  mdebug("globalsOf(..., method = '%s', mustExist = %s, unlist = %s, recursive = %s) ... DONE", method, mustExist, unlist, recursive)
  
  globals
} ## globalsOf()




#' Locates and retrieves a set of global variables by their names
#'
#' @param names A character vector of global variable names.
#' @param envir The environment from where to search for globals.
#' @param mustExist If TRUE, an error is thrown if the object of the
#'        identified global cannot be located.  Otherwise, the global
#'        is not returned.
#' @param ... Not used.
#'
#' @return A \link{Globals} object.
#'
#' @export
globalsByName <- function(names, envir=parent.frame(), mustExist=TRUE, ...) {
  names <- as.character(names)

  mdebug("globalsByName(<%d names>, mustExist = %s) ...", length(names), mustExist)
  mdebug("- search from environment: %s", sQuote(envname(envir)))

  ## Locate and retrieve the specified globals
  n <- length(names)
  needsDotdotdot <- (identical(names[n], "..."))
  if (needsDotdotdot) names <- names[-n]
  mdebug("- dotdotdot: %s", needsDotdotdot)
  
  globals <- structure(list(), class=c("Globals", "list"))
  where <- list()
  for (kk in seq_along(names)) {
    name <- names[kk]
    mdebug("- locating #%d (%s)", kk, sQuote(name))
    env <- where(name, envir=envir, inherits=TRUE)
    mdebug("  + found in environment: %s", sQuote(envname(env)))
    if (!is.null(env)) {
      where[[name]] <- env
      value <- get(name, envir=env, inherits=FALSE)
      if (is.null(value)) {
        globals[name] <- list(NULL)
      } else {
        globals[[name]] <- value
      }
    } else {
      globals[name] <- list(NULL)
      where[name] <- list(NULL)
      if (mustExist) {
        stop(sprintf("Failed to locate global object in the relevant environments: %s", sQuote(name)))
      }
    }
  }

  if (needsDotdotdot) {
    if (exists("...", envir=envir, inherits=TRUE)) {
      where[["..."]] <- where("...", envir=envir, inherits=TRUE)
      ddd <- evalq(list(...), envir=envir, enclos=envir)
    } else {
      where["..."] <- list(NULL)
      ddd <- NA
    }
    class(ddd) <- c("DotDotDotList", class(ddd))
    globals[["..."]] <- ddd
  }

  stopifnot(
    is.list(where),
    length(where) == length(globals),
    all(names(where) == names(globals))
  )

  attr(globals, "where") <- where

  mdebug("globalsByName(<%d names>, mustExist = %s) ... DONE", length(names), mustExist)
  
  globals
} ## globalsByName()
