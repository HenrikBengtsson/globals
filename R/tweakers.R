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
    n <- length(expr)
    for (kk in seq_len(n)) {
      expr[[kk]] <- walkAST(expr[[kk]], atomic=atomic, name=name, call=call, pairlist=pairlist, substitute=FALSE)
    }
    if (is.function(call)) expr <- call(expr)
  } else if (is.pairlist(expr)) {
    n <- length(expr)
    for (kk in seq_len(n)) {
      expr[[kk]] <- walkAST(expr[[kk]], atomic=atomic, name=name, call=call, pairlist=pairlist, substitute=FALSE)
    }
    if (is.function(pairlist)) expr <- pairlist(expr)
  } else {
    stop("Cannot tweak expression. Unknown type ", sQuote(typeof(expr)), call.=FALSE)
  }

  expr
} ## walkAST()


tweakFormulas <- function(expr) {
  ## Formula #1:
  ##   expression: ~ rhs
  ##   AST: (~ rhs)
  ##   tweaked expression: rhs; ~ rhs
  ##
  ## Formula #2:
  ##   expression: lhs ~ rhs
  ##   AST: (~ lhs rhs)
  ##   tweaked expression: rhs; lhs ~ rhs

  walkAST(expr, call=function(expr) {
    if (!is.call(expr)) return(expr)
  
    op <- expr[[1]]
    if (!is.symbol(op)) return(expr)
    op <- as.character(op)
    if (op != "~") return(expr)
    
    n <- length(expr)
    if (n != 2 && n != 3) return(expr)

    if (n == 2) {
      lhs <- NULL
      rhs <- expr[[2]]
    } else if (n == 3) {
      lhs <- expr[[2]]
      rhs <- expr[[3]]
    }
 
    ## covr: skip=1
    expr <- substitute({ lhs; rhs; e }, list(lhs=lhs, rhs=rhs, e=expr))

    expr
  })
} # tweakFormulas()
