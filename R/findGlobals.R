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
findGlobals <- function(expr, envir=parent.frame(), ..., tweak=NULL, dotdotdot=c("warning", "error", "return", "ignore"), method=c("conservative", "liberal"), substitute=FALSE, unlist=TRUE) {
  method <- match.arg(method)
  dotdotdot <- match.arg(dotdotdot)

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

  if (dotdotdot %in% c("return", "ignore", "error")) {
    needsDotdotdot <- FALSE
    globals <- withCallingHandlers({
      oopts <- options(warn=0L)
      on.exit(options(oopts))
      if (method == "conservative") {
        findGlobals_conservative(expr, envir=envir)
      } else if (method == "liberal") {
        findGlobals_liberal(expr, envir=envir)
      }
    }, warning=function(w) {
      ## Warned about '...'?
      pattern <- "... may be used in an incorrect context"
      if (grepl(pattern, w$message, fixed=TRUE)) {
        if (dotdotdot == "return") {
          needsDotdotdot <<- TRUE
          ## FIXME: How can I void this warning? /HB 2015-09-12
        } else if (dotdotdot == "ignore") {
          ## FIXME: How can I void this warning? /HB 2015-09-12
        } else if (dotdotdot == "error") {
          e <- simpleError(w$message, w$call)
          stop(e)
        }
      }
    })
    if (needsDotdotdot) globals <- c(globals, "...")
    globals
  } else {
    if (method == "conservative") {
      findGlobals_conservative(expr, envir=envir)
    } else if (method == "liberal") {
      findGlobals_liberal(expr, envir=envir)
    }
  }
}
