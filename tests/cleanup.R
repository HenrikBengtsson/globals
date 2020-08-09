source("incl/start.R")

message("*** cleanup() ...")

message("- cleanup() with remapped base functions")

## Don't clean out renamed base functions
## https://github.com/HenrikBengtsson/globals/issues/57
globals <- as.Globals(list(
  my_fcn      = function(x) x,   ## should not be deleted
  identity    = base::identity,
  my_identity = base::identity   ## should not be deleted
))
globals <- cleanup(globals)
str(globals)
assert_identical_sets(names(globals), c("my_fcn", "my_identity"))

message("*** cleanup() ... DONE")

source("incl/end.R")
