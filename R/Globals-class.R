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
#' @aliases as.Globals as.Globals.Globals as.Globals.list [.Globals names
#' @export
Globals <- function(object = list(), ...) {
  if (!is.list(object)) {
    stop("Argument 'object' is not a list: ", class(object)[1])
  }

  if (length(object) > 0) {
    names <- names(object)
    if (is.null(names)) {
      stop("Argument 'object' must be a named list.")
    } else if (!all(nzchar(names))) {
      stop("Argument 'object' specifies globals with empty names.")
    }
  }

  where <- attr(object, "where")
  if (length(object) == 0 && is.null(where)) {
    attr(object, "where") <- where <- list()
  }
  stopifnot(is.list(where))

  ## TODO: Add only when future (> 1.0.1) is on CRAN /HB 2016-09-05
##  stopifnot(
##    is.list(where),
##    length(where) == length(object),
##    all(names(where) == names)
##  )

  structure(object, class = c("Globals", class(object)))
}

#' @export
as.Globals <- function(x, ...) UseMethod("as.Globals")

#' @export
as.Globals.Globals <- function(x, ...) x

#' @export
as.Globals.list <- function(x, ...) {
  ## Use the globals environments as the locals?
  ## (with emptyenv() as the fallback)
  where <- attr(x, "where")
  if (is.null(where)) {
    where <- lapply(x, FUN = function(obj) {
        e <- environment(obj)
	if (is.null(e)) e <- emptyenv()
	e
    })
    names(where) <- names(x)
    attr(x, "where") <- where
  }

  Globals(x, ...)
}

#' @export
`names<-.Globals` <- function(x, value) {
  x <- NextMethod("names")
  where <- attr(x, "where")
  names(where) <- names(x)
  attr(x, "where") <- where
  invisible(x)
}

#' @export
`[.Globals` <- function(x, i) {
  where <- attr(x, "where")
  res <- NextMethod("[")
  attr(res, "where") <- where[i]
  class(res) <- class(x)

  ## TODO: Add only when future (> 1.0.1) is on CRAN /HB 2016-09-05
##  where <- attr(res, "where")
##  stopifnot(
##    is.list(where),
##    length(where) == length(res),
##    all(names(where) == names(res))
##  )

  res
}


#' @export
`$<-.Globals` <- function(x, name, value) {
  where <- attr(x, "where")

  ## Remove an element?
  if (is.null(value)) {
    x[[name]] <- NULL
    where[[name]] <- NULL
  } else {
    ## Value must be Globals object of length one
    if (inherits(value, "Globals")) {
      if (length(value) != 1) {
        stop("Cannot assign Globals object of length different than one: ", length(value))
      }
      x[[name]] <- value[[1]]
      where[[name]] <- attr(value, "where")[[1]]
    } else {
      w <- environment(value)
      if (is.null(w)) w <- emptyenv()
      x[[name]] <- value
      where[[name]] <- w
    }
  }

  attr(x, "where") <- where
  invisible(x)
}



#' @export
c.Globals <- function(x, ...) {
  args <- list(...)

  where <- attr(x, "where")
  clazz <- class(x)
  class(x) <- NULL

  for (kk in seq_along(args)) {
    g <- args[[kk]]
    name <- names(args)[kk]

    if (inherits(g, "Globals")) {
      w <- attr(g, "where")
    } else if (is.list(g)) {
      ## Nothing to do?
      if (length(g) == 0) next

      names <- names(g)
      stopifnot(!is.null(names))
      w <- lapply(g, FUN = function(obj) {
        e <- environment(obj)
	if (is.null(e)) e <- emptyenv()
	e
      })
      names(w) <- names
    } else {
      if (is.null(name)) {
        stop("Can only append named objects to Globals list: ", sQuote(mode(g)))
      }
      g <- structure(list(g), names = name)
      e <- environment(g)
      if (is.null(e)) e <- emptyenv()
      w <- structure(list(e), names = name)
    }
    where <- c(where, w)
    x <- c(x, g)
  }

  class(x) <- clazz
  attr(x, "where") <- where

  stopifnot(
    length(where) == length(x),
    all(names(where) == names(x))
  )

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

    stopifnot(
      length(where) == length(x),
      all(names(where) == names(x))
    )
  }

  x
}
