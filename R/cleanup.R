#' @export
cleanup <- function(...) UseMethod("cleanup")

#' Drop certain types of globals
#'
#' @param globals A Globals object.
#' @param drop A character vector specifying what type of globals to drop.
#' @param \dots Not used
#'
#' @aliases cleanup
#' @export
cleanup.Globals <- function(globals, drop = c("missing", "base-packages"),
                            ...) {
  where <- attr(globals, "where", exact = TRUE)

  names <- names(globals)
  keep <- rep(TRUE, times = length(globals))
  names(keep) <- names

  ## Drop non-found objects
  drop_missing <- "missing" %in% drop

  ## Drop objects that are part of one of the "base" packages
  drop_base <- "base-packages" %in% drop

  ## Drop objects that are primitive functions
  drop_primitives <- "primitives" %in% drop

  ## Drop objects that calls .Internal()
  drop_internals <- "internals" %in% drop

  for (name in names) {
    env <- where[[name]]

    if (drop_missing && is.null(env)) {
      keep[[name]] <- FALSE
      next
    }

    ## Never drop globals that are not in package environments
    if (is.environment(env) && !isPackageNamespace(env)) {
      next
    }

    env_name <- environmentName(env)
    env_name <- gsub("^package:", "", env_name)

    ## Never drop a global that is copy of an exported package object but has
    ## different name than the exported object, e.g. myView <- utils::View
    ## See also: https://github.com/HenrikBengtsson/globals/issues/56
    if (!exists(name, envir = env) &&
        !exists(name, envir = asPkgEnvironment(env_name))) {
      next
    }

    if (drop_base && is_base_pkg(env_name)) {
      keep[[name]] <- FALSE
      next
    }

    global <- globals[[name]]

    if (drop_primitives && is.primitive(global)) {
      keep[[name]] <- FALSE
      next
    }

    if (drop_internals && is_internal(global)) {
      keep[[name]] <- FALSE
      next
    }
  }

  if (!all(keep)) {
    globals <- globals[keep]
  }

  globals
}
