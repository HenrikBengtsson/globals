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


#' @export
findGlobals <- function(expr, envir=parent.frame(), ..., tweak=NULL, method=c("conservative", "liberal"), substitute=FALSE, unlist=TRUE) {
  method <- match.arg(method)

  if (substitute) expr <- substitute(expr)

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
