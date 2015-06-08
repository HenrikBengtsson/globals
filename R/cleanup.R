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
  ## Drop objects that are primitive functions
  if ("primitives" %in% drop) {
    for (name in names(globals)) {
      if (is.primitive(globals[[name]])) globals[[name]] <- NULL
    }
  }

  ## Drop objects that calls .Internal()
  if ("internals" %in% drop) {
    for (name in names(globals)) {
      if (is.internal(globals[[name]])) globals[[name]] <- NULL
    }
  }

  ## Drop objects that are part of one of the "base" packages
  if ("base-packages" %in% drop) {
    for (name in names(globals)) {
      if (is.base(globals[[name]])) globals[[name]] <- NULL
    }
  }

  globals
} # cleanup()
