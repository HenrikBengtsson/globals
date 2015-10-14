#' @export
cleanup <- function(...) UseMethod("cleanup")

#' Drop certain types of globals
#'
#' @param globals A Globals object.
#' @param drop A character vector specifying what type of globals to drop.
#' @param ... Not used
#'
#' @aliases cleanup
#' @export
cleanup.Globals <- function(globals, drop=c("primitives", "internals", "base-packages"), ...) {
  keep <- rep(TRUE, times=length(globals))
  names(keep) <- names(globals)

  ## Drop objects that are primitive functions
  if ("primitives" %in% drop) {
    for (name in names(globals)) {
      if (is.primitive(globals[[name]])) keep[name] <- FALSE
    }
  }

  ## Drop objects that calls .Internal()
  if ("internals" %in% drop) {
    for (name in names(globals)) {
      if (is.internal(globals[[name]])) keep[name] <- FALSE
    }
  }

  ## Drop objects that are part of one of the "base" packages
  if ("base-packages" %in% drop) {
    for (name in names(globals)) {
      if (is.base(globals[[name]])) keep[name] <- FALSE
    }
  }

  if (!all(keep)) {
    where <- attr(globals, "where")
    globals <- globals[keep]
    attr(globals, "where") <- where[keep]
  }

  globals
} # cleanup()
