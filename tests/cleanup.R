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

## Add an example of an internal/non-exported package object from 'utils'.
## Such objects need to be kept because they will not be on the search path
## even if the package is attached
ns <- asNamespace("utils")
pkg <- as.environment("package:utils")
internals <- setdiff(ls(ns, all.names = TRUE), ls(pkg, all.names = TRUE))
internals <- grep("^print", internals, value = TRUE)
if (length(internals) > 0L) {
  name <- internals[1]
  obj <- get(name, envir = ns, inherits = FALSE)
  stopifnot(!exists(name, envir = pkg, inherits = FALSE))
  globals[[name]] <- obj
  expected <- c(expected, name)
  name <- sprintf("my-%s", name)
  globals[[name]] <- obj
  expected <- c(expected, name)
}

globals <- as.Globals(globals)
str(globals)

globals <- cleanup(globals)
str(globals)
assert_identical_sets(names(globals), expected)


message("- cleanup() with missing globals")
rm(list = "b")
expr <- quote(a <- b)
print(expr)
globals <- globalsOf(expr, mustExist = FALSE)
str(globals)
stopifnot(identical(names(globals), c("<-", "b")))


message("- cleanup(globals) with missing globals")
pruned <- cleanup(globals)
str(pruned)
stopifnot(length(pruned) == 0L)

message("- cleanup(globals, drop = 'missing') with missing globals")
pruned <- cleanup(globals, drop = "missing")
str(pruned)
stopifnot(identical(names(pruned), c("<-")))

message("- cleanup(globals, drop = 'base-packages') with missing globals")
pruned <- cleanup(globals, drop = "base-packages")
str(pruned)
stopifnot(identical(names(pruned), c("b")))

message("*** cleanup() ... DONE")

source("incl/end.R")
