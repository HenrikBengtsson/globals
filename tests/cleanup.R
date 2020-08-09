source("incl/start.R")

message("*** cleanup() ...")

message("- cleanup() with remapped base functions")

## Don't clean out renamed base functions
## https://github.com/HenrikBengtsson/globals/issues/57
globals <- list(
  my_fcn      = function(x) x,   ## should not be deleted
  identity    = base::identity,
  my_identity = base::identity   ## should not be deleted
)
expected <- c("my_fcn", "my_identity")

## Add an internal object
ns <- asNamespace("utils")
pkg <- as.environment("package:utils")
internals <- setdiff(ls(ns, all.names = TRUE), ls(pkg, all.names = TRUE))
internals <- grep("^print", internals, value = TRUE)
if (length(internals) > 0L) {
  name <- internals[1]
  obj <- get(name, envir = ns, inherits = FALSE)
  stopifnot(!exists(name, envir = pkg, inherits = FALSE))
  globals[[name]] <- obj
  name <- sprintf("my-%s", name)
  globals[[name]] <- obj
  expected <- c(expected, name)
}

globals <- as.Globals(globals)
str(globals)

globals <- cleanup(globals)
str(globals)
assert_identical_sets(names(globals), expected)

message("*** cleanup() ... DONE")

source("incl/end.R")
