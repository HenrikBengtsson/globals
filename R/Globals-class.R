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
#' @aliases as.Globals as.Globals.Globals as.Globals.list [.Globals
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

  where <- attr(object, "where")
  stopifnot(
    is.list(where),
    length(where) == length(object),
    all(names(where) == names)
  )

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

  where <- attr(res, "where")
  stopifnot(
    is.list(where),
    length(where) == length(res),
    all(names(where) == names(res))
  )

  res
}



#' @export
c.Globals <- function(x, ...) {
  args <- list(...)

  where <- attr(x, "where")
  clazz <- class(x)
  class(x) <- NULL
  
  for (kk in seq_along(args)) {
    g <- args[[kk]]
    stopifnot(inherits(g, "Globals"))
    w <- attr(g, "where")
    where <- c(where, w)
    x <- c(x, g)
  }
  
  class(x) <- clazz
  attr(x, "where") <- where

  stopifnot(length(where) == length(x), all(names(where) == names(x)))

  x
}

#' @export
unique.Globals <- function(x, ...) {
  names <- names(x)
  dups <- duplicated(names)
  if (any(dups)) {
    where <- attr(x, "where")
    where <- where[!dups]
    x <- x[!dups]
    attr(x, "where") <- where
    
    stopifnot(length(where) == length(x), all(names(where) == names(x)))
  }

  x
}
