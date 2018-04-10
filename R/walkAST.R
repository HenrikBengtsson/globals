#' Walk the Abstract Syntax Tree (AST) of an R Expression
#'
#' @param expr R \link[base]{expression}.
#' @param atomic,name,call,pairlist single-argument function that takes an
#'        atomic, name, call and pairlist expression, respectively. Have to
#'        return a valid R expression.
#' @param name single-argument function that takes a name expression.
#' @param call single-argument function that takes a call expression.
#' @param pairlist single-argument function that takes a pairlist expression.
#' @param substitute If TRUE, \code{expr} is
#'        \code{\link[base]{substitute}()}:ed.
#'
#' @return R \link[base]{expression}.
#'
#' @export
#' @keywords programming internal
walkAST <- function(expr, atomic = NULL, name = NULL, call = NULL,
                    pairlist = NULL, substitute = FALSE) {
  if (substitute) expr <- substitute(expr)

  if (is.atomic(expr)) {
    if (is.function(atomic)) expr <- atomic(expr)
  } else if (is.name(expr)) {
    if (is.function(name)) expr <- name(expr)
  } else if (is.call(expr)) {
##    message("call")
    for (cc in seq_along(expr)) {
      ## AD HOC: The following is needed to handle x[, 1]. /HB 2016-09-06
      if (is.name(expr[[cc]]) && expr[[cc]] == "") next
      e <- walkAST(expr[[cc]], atomic = atomic, name = name, call = call,
                   pairlist = pairlist, substitute = FALSE)
      if (is.null(e)) {
        expr[cc] <- list(NULL)
      } else {
        expr[[cc]] <- e
      }
    }
    if (is.function(call)) expr <- call(expr)
  } else if (is.pairlist(expr)) {
##    message("pairlist")
    for (pp in seq_along(expr)) {
      ## AD HOC: The following is needed to handle '...'. /HB 2016-09-06
      if (is.name(expr[[pp]]) && expr[[pp]] == "") next
      e <- walkAST(expr[[pp]], atomic = atomic, name = name, call = call,
                   pairlist = pairlist, substitute = FALSE)
      if (is.null(e)) {
        expr[pp] <- list(NULL)
      } else {
        expr[[pp]] <- e
      }
    }
    ## WORKAROUND: Since expr[i] <- list(NULL) turns pairlist 'expr' into
    ## a list we have to make sure to it is a pairlist also afterward, cf.
    ## https://stat.ethz.ch/pipermail/r-devel/2016-October/073263.html
    ## /HB 2016-10-12
    expr <- as.pairlist(expr)
  } else if (is.list(expr)) {
    ## FIXME: Should we have a specific function for this, or is atomic() ok?
    ## https://github.com/HenrikBengtsson/globals/issues/27
    if (is.function(atomic)) expr <- atomic(expr)
  } else if (typeof(expr) %in% c("builtin", "closure", "special",
                                 "expression", "S4", "environment")) {
    ## Nothing to do
    ## FIXME: ... or can closures and specials be "walked"? /HB 2017-03-21
    ## FIXME: Should "promise", "char", "...", "any", "externalptr",
    ##  "bytecode", and "weakref" (cf. ?typeof) also be added? /2017-07-01
    return(expr)
  } else {
    msg <- paste("Cannot walk expression. Unknown object type",
                 sQuote(typeof(expr)))
    onUnknownType <- getOption("globals.walkAST.onUnknownType", "error")
    if (onUnknownType == "error") {
      stop(msg, call. = FALSE)
    } else if (onUnknownType == "warning") {
      warning(msg, call. = FALSE)
    }
    ## Skip below assertion
    return(expr)
  }

  ## Assert that the tweak functions return a valid object
  if (!missing(expr)) {
    stop_if_not(is.atomic(expr) ||
              is.list(expr) ||
              is.name(expr) ||
              is.call(expr) ||
              is.pairlist(expr) ||
              typeof(expr) %in% c("builtin", "closure", "special"))
  }

  expr
} ## walkAST()
