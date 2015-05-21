findGlobals_conservative <- function(expr, envir, ...) {
  fun <- asFunction(expr, envir=envir, ...)
  names <- codetools::findGlobals(fun, merge=TRUE)
  names
}

findGlobals_liberal <- function(expr, envir, ...) {
  requireNamespace("codetools")

  vars <- new.env(hash=TRUE, parent=emptyenv())
  funs <- new.env(hash=TRUE, parent=emptyenv())

  enter <- function(type, v, e, w) {
    if (type == "function")
      assign(v, value=TRUE, envir=funs)
    else
      assign(v, value=TRUE, envir=vars)
  }

  fun <- asFunction(expr, envir=envir, ...)
  w <- codetools::makeUsageCollector(fun, enterGlobal=enter, name="<anonymous>")
  codetools::walkCode(expr, w)

  fnames <- ls(funs, all.names = TRUE)
  vnames <- ls(vars, all.names = TRUE)
  sort(unique(c(fnames, vnames)))
}


findGlobals <- function(expr, envir=parent.frame(), ..., tweak=NULL, method=c("conservative", "liberal"), unlist=TRUE) {
  method <- match.arg(method)

  if (is.list(expr)) {
    names <- lapply(expr, FUN=findGlobals, envir=envir, ..., tweak=tweak, unlist=FALSE)
    if (unlist) {
      names <- unlist(names, use.names=TRUE)
      names <- sort(unique(names))
    }
    return(names)
  }

  if (is.function(tweak)) expr <- tweak(expr)

  if (method == "conservative") {
    findGlobals_conservative(expr, envir=envir)
  } else if (method == "liberal") {
    findGlobals_liberal(expr, envir=envir)
  }
}

#' Get all global objects for one or more R expressions
#'
#' @param expr An R expression or a a list of R expressions.
#' @param envir The environment where to search for globals.
#' @param ... Not used.
#' @param method A character string specifying what type of search algorithm to use.
#' @param primitive If TRUE, primitive globals are returned, otherwise not.
#' @param base If TRUE, globals part of "base" packages are returned, otherwise not.
#' @param tweak An optional function that takes an expression
#'        and returns a tweaked expression.
#' @param mustExist If TRUE, an error is thrown if the object of the
#'        identified global cannot be located.  Otherwise, the global
#'        is not returned.
#' @param unlist If TRUE, a list of unique objects is returned.
#'        If FALSE, a list of \code{length(expr)} sublists.
#'
#' @return A named list of objects.
#'
#' @details
#' There currently two methods for identifying global objects.
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
#' are most likely among the identified ones.  At the same, there is
#' a risk that some false positives are also identified.
#'
#' @example incl/findGlobals.R
#'
#' @seealso
#' Internally, the \pkg{\link{codetools}} package is utilized for
#' code inspections.
#'
#' @aliases findGlobals
#' @export
#' @export findGlobals
#' @keywords internal
getGlobals <- function(expr, envir=parent.frame(), ..., method=c("conservative", "liberal"), primitive=FALSE, base=FALSE, tweak=NULL, mustExist=TRUE, unlist=TRUE) {
  method <- match.arg(method)
  names <- findGlobals(expr, envir=envir, ..., method=method, tweak=tweak, unlist=unlist)

  globals <- list()
  for (name in names) {
    if (exists(name, envir=envir, inherits=TRUE)) {
      obj <- get(name, envir=envir, inherits=TRUE)

      ## Drop primitive functions?
      if (!primitive && is.primitive(obj)) next

      ## Drop function in "base" packages?
      if (!base && is.base(obj)) next

      globals[[name]] <- obj
    } else if (mustExist) {
      stop("Identified a global by static code inspection, but failed to locate the corresponding object in the relevant environments: ", sQuote(name))
    }
  }

  globals
}
