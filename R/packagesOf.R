#' @export
packagesOf <- function(...) UseMethod("packagesOf")

#' Identify the packages of the globals
#'
#' @param globals A Globals object.
#' @param \dots Not used.
#'
#' @return Returns a character vector of package names.
#'
#' @aliases packagesOf
#' @export
packagesOf.Globals <- function(globals, ...) {
  ## Scan 'globals' for which packages they are from.  This information is
  ## in the name of the environment as given by the 'where' attribute with
  ## a fallback to the global object.
  
  where <- attr(globals, "where")
  pkgs <- rep(NA_character_, times = length(globals))
  for (kk in seq_along(globals)) {
    obj <- globals[[kk]]
    env <- environment_of(obj)
    
    ## If not found, it could be an object in package without a closure
    if (identical(env, emptyenv())) {
      w <- where[[kk]]
      if (is.environment(w)) {
        pkg <- environmentName(w)
        if (grepl("^package:", pkg)) pkg <- sub("^package:", "", pkg)
      } else {
        pkg <- environmentName(env)
      }
    } else {
      pkg <- environmentName(env)
    }
    
    pkgs[kk] <- pkg
  }

  ## Drop "missing" packages, e.g. globals in globalenv().
  pkgs <- pkgs[nzchar(pkgs)]

  ## Drop global environment
  pkgs <- pkgs[pkgs != "R_GlobalEnv"]

  ## Keep only names matching loaded namespaces
  pkgs <- intersect(pkgs, loadedNamespaces())

  ## Packages to be loaded
  pkgs <- unique(pkgs)

  ## Sanity check
  stop_if_not(all(nzchar(pkgs)))

  pkgs
} # packagesOf()

