## covr: skip=all
.onLoad <- function(libname, pkgname) {
  ## Memoize: Already here when the package is loaded, record whether
  ## some known packages are 'base' packages or not.  This avoids
  ## hardcoding which packages are in the 'base' set, because that set
  ## may change in the future (although rarely).
  ## Packages that most likely are 'base' packages:
  pkgs <- c("base", "compiler", "datasets", "graphics", "grDevices", "grid",
            "methods", "parallel", "splines", "stats", "stats4", "tcltk",
	    "tools", "utils")
  ## Other packages
  pkgs <- c(pkgs, "codetools", "globals")
  is_base_pkg(pkgs)
}
