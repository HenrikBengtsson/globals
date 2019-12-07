source("incl/start.R")

message("*** globalsByName() ...")

globals_c <- globalsByName(c("{", "<-", "c", "d"))
str(globals_c)
assert_identical_sets(names(globals_c), c("{", "<-", "c", "d"))
globals_c <- cleanup(globals_c)
str(globals_c)
assert_identical_sets(names(globals_c), c("c", "d"))
where <- attr(globals_c, "where")
stopifnot(
  length(where) == length(globals_c),
  identical(where$c, globalenv()),
  identical(where$d, globalenv())
)

foo <- globals::Globals
globals <- globalsByName(c("{", "foo", "list"), recursive = FALSE)
str(globals)
assert_identical_sets(names(globals), c("{", "foo", "list"))
where <- attr(globals, "where")
stopifnot(length(where) == length(globals))
if (!covr) stopifnot(
  identical(where$`{`, baseenv()),
  identical(where$foo, globalenv()),
  identical(where$list, baseenv())
)

globals <- cleanup(globals)
str(globals)
assert_identical_sets(names(globals), c("foo"))
globals <- cleanup(globals, drop = "internals")
str(globals)
assert_identical_sets(names(globals), c("foo"))
pkgs <- packagesOf(globals)
stopifnot(pkgs == "globals")


## Also '...'
myGlobals <- function(x, ...) {
  globalsByName(c("a", "x", "..."))
}
globals <- myGlobals(x = 2, y = 3, z = 4)
str(globals)
assert_identical_sets(names(globals), c("a", "x", "..."))
assert_identical_sets(names(globals[["..."]]), c("y", "z"))


## BUG FIX: Assert that '...' does not have to be specified at the end
myGlobals <- function(x, ...) {
  globalsByName(c("a", "...", "x"))
}
globals <- myGlobals(x = 2, y = 3, z = 4)
str(globals)
assert_identical_sets(names(globals), c("a", "x", "..."))
assert_identical_sets(names(globals[["..."]]), c("y", "z"))


## Test with arguments defaulting to other arguments
myGlobals <- function(x, y, z = y) {
  globalsByName(c("a", "x", "y", "z"))
}
globals <- myGlobals(x = 2, y = 3)
assert_identical_sets(names(globals), c("a", "x", "y", "z"))
stopifnot(globals$y == 3, identical(globals$z, globals$y))

globals <- myGlobals(x = 2, y = 3, z = 4)
assert_identical_sets(names(globals), c("a", "x", "y", "z"))
stopifnot(globals$y == 3, globals$z == 4)

myGlobals <- function(x, ...) {
  globalsByName(c("a", "x", "..."))
}
globals <- myGlobals(x = 2, y = 3)
assert_identical_sets(names(globals), c("a", "x", "..."))
assert_identical_sets(names(globals[["..."]]), c("y"))
stopifnot(globals[["..."]]$y == 3)

globals <- myGlobals(x = 2, y = 3, z = 4)
assert_identical_sets(names(globals), c("a", "x", "..."))
assert_identical_sets(names(globals[["..."]]), c("y", "z"))
stopifnot(globals[["..."]]$y == 3, globals[["..."]]$z == 4)

message("*** globalsByName() ... DONE")

source("incl/end.R")
