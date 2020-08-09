source("incl/start.R")

message("*** cleanup() ...")

## Don't clean out renamed base functions
globals <- as.Globals(list(
  my_fcn      = function(x) x,
  identity    = base::identity,
  my_identity = base::identity   ## should not be deleted
))

stopifnot(all(c("my_fcn", "identity", "my_identity") %in% names(globals)))

globals2 <- cleanup(globals)
stopifnot(
       "my_fcn" %in% names(globals2),
    !"identity" %in% names(globals2),
  "my_identity" %in% names(globals2)
)

message("*** cleanup() ... DONE")

source("incl/end.R")
