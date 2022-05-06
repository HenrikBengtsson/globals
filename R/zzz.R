## covr: skip=all
.onLoad <- function(libname, pkgname) {
  update_package_option("globals.debug", mode = "logical")
  debug <- getOption("globals.debug", FALSE)

  ## Set future options based on environment variables
  update_package_options(debug = debug)

  ## Memoize: Already here, when the package is loaded, record whether
  ## some packages are 'base' packages or not.
  ## Packages that most likely are 'base' packages:
  pkgs <- c("base", "compiler", "datasets", "graphics", "grDevices", "grid",
            "methods", "parallel", "splines", "stats", "stats4", "tcltk",
	    "tools", "utils")
  ## This package and other packags already loaded (incl. it's dependencies)
  pkgs <- c(pkgs, pkgname, loadedNamespaces())
  is_base_pkg(pkgs)
}
