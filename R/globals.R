findGlobals <- function(expr, envir=parent.frame(), ..., tweak=NULL, unlist=TRUE) {
  if (is.list(expr)) {
    names <- lapply(expr, FUN=findGlobals, envir=envir, ...)
    if (unlist) {
      names <- unlist(names, use.names=TRUE)
      names <- sort(unique(names))
    }
  } else {
    if (is.function(tweak)) expr <- tweak(expr)
    fcn <- asFunction(expr, envir=envir, ...)
    names <- codetools::findGlobals(fcn, merge=TRUE)
  }
  names
}

#' Get all global objects for one or more R expressions
#'
#' @param expr An R expression or a a list of R expressions.
#' @param envir The environment where to search for globals.
#' @param ... Not used.
#' @param primitive If TRUE, primitive globals are returned, otherwise not.
#' @param base If TRUE, globals part of "base" packages are returned, otherwise not.
#' @param tweak An optional function that takes an expression
#'        and returns a tweaked expression.
#' @param unlist If TRUE, a list of unique objects is returned.
#'        If FALSE, a list of \code{length(expr)} sublists.
#'
#' @return A named list of variables.
#'
#' @aliases findGlobals
#' @export
#' @export findGlobals
#' @keywords internal
getGlobals <- function(expr, envir=parent.frame(), ..., primitive=FALSE, base=FALSE, tweak=NULL, unlist=TRUE) {
  names <- findGlobals(expr, envir=envir, ..., tweak=tweak, unlist=unlist)
  globals <- lapply(names, FUN=function(names) {
    objs <- lapply(names, FUN=get, envir=envir, inherits=TRUE)
    names(objs) <- names
    ## Drop primitive functions?
    if (!primitive) {
      objs <- objs[!sapply(objs, FUN=is.primitive)]
    }
    ## Drop function in "base" packages?
    if (!base) {
      pkgs <- sapply(objs, FUN=function(x) environmentName(environment(x)))
      objs <- objs[!isBasePkgs(pkgs)]
    }
    objs
  })
  if (unlist) globals <- Reduce(c, globals)
  globals
}
