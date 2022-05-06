#' A representation of a set of globals
#'
#' @usage Globals(object, ...)
#'
#' @param object A named list.
#'
#' @param \dots Not used.
#'
#' @return An object of class \code{Globals}, which is a \emph{named} list
#' of the value of the globals, where the element names are the names of
#' the globals.  Attribute \code{where} is a named list of the same length
#' and with the same names.
#'
#' @seealso
#' The \code{\link{globalsOf}()} function identifies globals
#' from an R expression and returns a Globals object.
#'
#' @aliases as.Globals as.Globals.Globals as.Globals.list [.Globals names
#' @export
Globals <- function(object = list(), ...) {
  if (!is.list(object)) {
    stopf("Argument 'object' is not a list: %s", class(object)[1])
  }

  if (length(object) > 0) {
    names <- names(object)
    if (is.null(names)) {
      stop("Argument 'object' must be a named list.")
    } else if (!all(nzchar(names))) {
      stop("Argument 'object' specifies globals with empty names.")
    }
  }

  where <- attr(object, "where", exact = TRUE)
  if (length(object) == 0 && is.null(where)) {
    attr(object, "where") <- where <- list()
  }
  stop_if_not(is.list(where))

  stop_if_not(
    is.list(where),
    length(where) == length(object),
    length(names(where)) == length(names(object))
  )

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
  where <- attr(x, "where", exact = TRUE)
  if (is.null(where)) {
    where <- lapply(x, FUN = environment_of)
    names(where) <- names(x)
    attr(x, "where") <- where
  }

  Globals(x, ...)
}

#' @export
`names<-.Globals` <- function(x, value) {
  x <- NextMethod()
  where <- attr(x, "where", exact = TRUE)
  names(where) <- names(x)
  attr(x, "where") <- where
  invisible(x)
}

#' @export
`[.Globals` <- function(x, i) {
  where <- attr(x, "where", exact = TRUE)
  res <- NextMethod()
  attr(res, "where") <- where[i]
  class(res) <- class(x)

  where <- attr(res, "where", exact = TRUE)
  stop_if_not(
    is.list(where),
    length(where) == length(res),
    length(names(where)) == length(names(res))
  )

  res
}


#' @export
`$<-.Globals` <- function(x, name, value) {
  where <- attr(x, "where", exact = TRUE)

  ## Remove an element?
  if (is.null(value)) {
    x[[name]] <- NULL
    where[[name]] <- NULL
  } else {
    ## Value must be Globals object of length one
    if (inherits(value, "Globals")) {
      if (length(value) != 1) {
        stopf("Cannot assign Globals object of length different than one: %s",
             length(value))
      }
      x[[name]] <- value[[1]]
      where[[name]] <- attr(value, "where", exact = TRUE)[[1]]
    } else {
      x[[name]] <- value
      where[[name]] <- environment_of(value)
    }
  }

  attr(x, "where") <- where
  invisible(x)
}



#' @export
c.Globals <- function(x, ...) {
  args <- list(...)

  where <- attr(x, "where", exact = TRUE)
  clazz <- class(x)
  class(x) <- NULL

  for (kk in seq_along(args)) {
    g <- args[[kk]]
    name <- names(args)[kk]

    if (inherits(g, "Globals")) {
      w <- attr(g, "where", exact = TRUE)
    } else if (is.list(g)) {
      ## Nothing to do?
      if (length(g) == 0) next

      names <- names(g)
      stop_if_not(!is.null(names))
      w <- lapply(g, FUN = environment_of)
      names(w) <- names
    } else {
      if (is.null(name)) {
        stopf("Can only append named objects to Globals list: %s", sQuote(mode(g)))
      }
      g <- structure(list(g), names = name)
      e <- environment_of(g)
      w <- structure(list(e), names = name)
    }
    where <- c(where, w)
    x <- c(x, g)
  }

  class(x) <- clazz
  attr(x, "where") <- where

  stop_if_not(
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
    where <- attr(x, "where", exact = TRUE)
    where <- where[!dups]
    x <- x[!dups]
    attr(x, "where") <- where

    stop_if_not(
      length(where) == length(x),
      all(names(where) == names(x))
    )
  }

  x
}
