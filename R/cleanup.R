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
cleanup.Globals <- function(globals, drop = c("missing", "base-packages", "nativesymbolinfo"), ...) {
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

  ## Drop objects that are of class NativeSymbolInfo used in calls
  ## to .Call(), .Call.graphics(), .External(), .External2(), and
  ## .External.graphics()
  drop_native_symbol_info <- "nativesymbolinfo" %in% drop
  
  for (name in names) {
    env <- where[[name]]

    if (drop_missing && is.null(env)) {
      keep[[name]] <- FALSE
      next
    }

    ## Never drop globals that are not in package environments.
    ## This will drop local copies of package objects, e.g.
    ## myView <- utils::View and format.aspell <- utils:::format.aspell
    if (is.environment(env) && !isPackageNamespace(env)) {
      next
    }

    env_name <- environmentName(env)
    env_name <- gsub("^package:", "", env_name)

    ## Never drop a global that is copy of an exported package object but
    ## has different name than the exported object.  This avoids dropping
    ## local, renamed copies of package objects in a list, e.g.
    ## globals <- globals::as.Globals(list(
    ##   identity        = base::identity,
    ##   my_identity     = base::identity,       ## should be kept
    ##   print.aspell    = utils:::print.aspell, ## should be kept
    ##   my_print.aspell = utils:::print.aspell  ## should be kept
    ## ))
    ## https://github.com/HenrikBengtsson/globals/issues/57

    ## Is the global an exported package object?
    is_exported <- exists(name, envir = asPkgEnvironment(env_name))

    if (is_exported && drop_base && is_base_pkg(env_name)) {
      keep[[name]] <- FALSE
      next
    }

    global <- globals[[name]]

    ## Example: base::rm()
    if (is_exported && drop_primitives && is.primitive(global)) {
      keep[[name]] <- FALSE
      next
    }

    ## Example: base::quit()
    if (is_exported && drop_internals && is_internal(global)) {
      keep[[name]] <- FALSE
      next
    }
    

    ## Is the the global a non-exported package object?
    is_private <- !is_exported && exists(name, envir = env)

    ## Example: base::.C_R_addTaskCallback
    if ((is_exported || is_private) &&
        drop_native_symbol_info && is_native_symbol_info(global)) {
      keep[[name]] <- FALSE
      next
    }
  }

  if (!all(keep)) {
    globals <- globals[keep]
  }

  globals
}
