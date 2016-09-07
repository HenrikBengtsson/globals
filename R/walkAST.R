#' Walk the Abstract Syntax Tree (AST) of an R Expression
#'
#' @param expr R \link[base]{expression}.
#' @param atomic,name,call,pairlist single-argument function that takes an atomic, name, call and pairlist expression, respectively. Have to return a valid R expression.
#' @param name single-argument function that takes a name expression.
#' @param call single-argument function that takes a call expression.
#' @param pairlist single-argument function that takes a pairlist expression.
#' @param substitute If TRUE, \code{expr} is \code{\link[base]{substitute}()}:ed.
#'
#' @return R \link[base]{expression}.
#'
#' @export
#' @keywords programming internal
walkAST <- function(expr, atomic=NULL, name=NULL, call=NULL, pairlist=NULL, substitute=FALSE) {
  if (substitute) expr <- substitute(expr)

  if (is.atomic(expr)) {
    if (is.function(atomic)) expr <- atomic(expr)
  } else if (is.name(expr)) {
    if (is.function(name)) expr <- name(expr)
  } else if (is.call(expr)) {
##    message("call")
    for (cc in seq_along(expr)) {
      e <- walkAST(expr[[cc]], atomic=atomic, name=name, call=call, pairlist=pairlist, substitute=FALSE)
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
      e <- walkAST(expr[[pp]], atomic=atomic, name=name, call=call, pairlist=pairlist, substitute=FALSE)
      if (is.null(e)) {
        expr[pp] <- list(NULL)
      } else {
        expr[[pp]] <- e
      }
    }
    if (is.function(pairlist)) expr <- pairlist(expr)
  } else {
    stop("Cannot walk expression. Unknown object type ", sQuote(typeof(expr)), call.=FALSE)
  }

  ## Assert that the tweak functions return a valid object
  if (!missing(expr)) {
    stopifnot(is.atomic(expr) || is.name(expr) || is.call(expr) || is.pairlist(expr))
  }
  
  expr
} ## walkAST()
