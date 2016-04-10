#' A representation of a set of globals
#'
#' @usage Globals(object, ...)
#'
#' @param object A named list.
#' @param \dots Not used.
#'
#' @return An object of class \code{Future}.
#'
#' @seealso
#' The \code{\link{globalsOf}()} function identifies globals
#' from an R expression and returns a Globals object.
#'
#' @aliases as.Globals as.Globals.Globals as.Globals.list
#'          [.Globals c.Globals unique.Globals
#' @export
Globals <- function(object, ...) {
  if (!is.list(object)) {
    stop("Argument 'object' is not a list: ", class(object)[1])
  }

  names <- names(object)
  if (is.null(names)) {
    stop("Argument 'object' must be a named list.")
  } else if (!all(nzchar(names))) {
    stop("Argument 'object' specifies globals with empty names.")
  }

  structure(object, class=c(class(object), "Globals"))
}

#' @export
as.Globals <- function(x, ...) UseMethod("as.Globals")

#' @export
as.Globals.Globals <- function(x, ...) x

#' @export
as.Globals.list <- function(x, ...) {
  Globals(x, ...)
}


#' @export
`[.Globals` <- function(x, i) {
  where <- attr(x, "where")
  res <- NextMethod("[")
  attr(res, "where") <- where[i]
  class(res) <- class(x)
  res
}


#' @export
`c.Globals` <- function(x, ...) {
  args <- list(...)

  ## Drop empty arguments
  keep <- !unlist(lapply(args, FUN=is.null))
  args <- args[keep]

  ## Nothing to do?
  if (length(args) == 0) return(x)

  res <- unclass(x)
  where <- attr(x, "where")

  for (kk in seq_along(args)) {
    arg <- args[[kk]]
    stopifnot(inherits(arg, "Globals"))
    res <- c(res, arg)
    where <- c(where, attr(arg, "where"))
  }
  attr(res, "where") <- where
  class(res) <- class(x)

  res
}


#' @export
`unique.Globals` <- function(x, ...) {
  res <- unclass(x)
  where <- attr(x, "where")

  ## Identify unique elements
  keep <- !(duplicated(names(res)) & duplicated(res))

  ## Nothing to do?
  if (all(keep)) return(x)

  ## Drop duplicates
  res <- res[keep]
  where <- where[keep]
  attr(res, "where") <- where
  class(res) <- class(x)

  res
}
