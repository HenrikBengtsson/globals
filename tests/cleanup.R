source("incl/start.R")

message("*** cleanup() ...")

message("*** cleanup() with remapped base functions")

globals <- list(fun = base::identity, identity = base::identity)
globals <- as.Globals(globals)
globals <- cleanup(globals)
str(globals)
assert_identical_sets(names(globals), "fun")

source("incl/end.R")
