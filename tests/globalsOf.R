source("incl/start.R")

message("*** globalsOf() ...")

message(" ** globalsOf(..., method = 'conservative'):")
expr <- exprs$A
globals_c <- globalsOf(expr, method = "conservative")
str(globals_c)
assert_identical_sets(names(globals_c), c("{", "<-", "c", "d", "+"))
globals_c <- cleanup(globals_c)
str(globals_c)
assert_identical_sets(names(globals_c), c("c", "d"))
where <- attr(globals_c, "where")
stopifnot(
  length(where) == length(globals_c),
  identical(where$c, globalenv()),
  identical(where$d, globalenv())
)

message(" ** globalsOf(..., method = 'liberal'):")
expr <- exprs$A
globals_l <- globalsOf(expr, method = "liberal")
str(globals_l)
assert_identical_sets(names(globals_l), c("{", "<-", "b", "c", "d", "+", "a", "e"))
globals_l <- cleanup(globals_l)
str(globals_l)
assert_identical_sets(names(globals_l), c("b", "c", "d", "a", "e"))
where <- attr(globals_l, "where")
stopifnot(
  length(where) == length(globals_l),
  identical(where$b, globalenv()),
  identical(where$c, globalenv()),
  identical(where$d, globalenv())
)

message(" ** globalsOf(..., method = 'ordered'):")
expr <- exprs$A
globals_i <- globalsOf(expr, method = "ordered")
str(globals_i)
assert_identical_sets(names(globals_i), c("{", "<-", "b", "c", "d", "+", "a", "e"))
globals_i <- cleanup(globals_i)
str(globals_i)
assert_identical_sets(names(globals_i), c("b", "c", "d", "a", "e"))
where <- attr(globals_i, "where")
stopifnot(
  length(where) == length(globals_i),
  identical(where$b, globalenv()),
  identical(where$c, globalenv()),
  identical(where$d, globalenv())
)

message(" ** globalsOf() w/ globals in local functions:")

a <- 1
bar <- function(x) x - a
foo <- function(x) bar(x)

for (method in c("ordered", "conservative", "liberal")) {
  globals <- globalsOf({ foo(3) }, substitute = TRUE, method = method,
                         recursive = FALSE, mustExist = FALSE)
  assert_identical_sets(names(globals), c("{", "foo"))
  stopifnot(!any("a" %in% names(globals)))
  globals <- cleanup(globals)
  str(globals)
  assert_identical_sets(names(globals), c("foo"))
  stopifnot(!any("a" %in% names(globals)))

  globals <- globalsOf({ foo(3) }, substitute = TRUE, method = "ordered",
                         recursive = TRUE, mustExist = FALSE)
  assert_identical_sets(names(globals), c("{", "foo", "bar", "-", "a"))
  globals <- cleanup(globals)
  str(globals)
  assert_identical_sets(names(globals), c("foo", "bar", "a"))

  globals <- globalsOf({ foo(3) }, substitute = TRUE,
                         recursive = TRUE, mustExist = FALSE)
  assert_identical_sets(names(globals), c("{", "foo", "bar", "-", "a"))
  globals <- cleanup(globals)
  str(globals)
  assert_identical_sets(names(globals), c("foo", "bar", "a"))
}


message(" ** globalsOf() w/ recursive functions:")

## "Easy"
f <- function() Recall()
globals <- globalsOf(f)
str(globals)

## Direct recursive call
f <- function() f()
globals <- globalsOf(f)
str(globals)

## Indirect recursive call
f <- function() g()
g <- function() f()
globals_f <- globalsOf(f)
str(globals_f)
globals_g <- globalsOf(g)
str(globals_g)
globals_f <- globals_f[order(names(globals_f))]
globals_g <- globals_g[order(names(globals_g))]
stopifnot(identical(globals_g, globals_f))


message("*** globalsOf() ... DONE")


message("*** Subsetting of Globals:")
expr <- exprs$A
globals_l <- globalsOf(expr, method = "liberal")
globals_s <- globals_l[-1]
stopifnot(length(globals_s) == length(globals_l) - 1L)
stopifnot(identical(class(globals_s), class(globals_l)))
where_l <- attr(globals_l, "where")
where_s <- attr(globals_s, "where")
stopifnot(length(where_s) == length(where_l) - 1L)
stopifnot(identical(where_s, where_l[-1]))


message("*** cleanup() & packagesOf():")
expr <- exprs$A
globals <- globalsOf(expr, method = "conservative")
str(globals)
assert_identical_sets(names(globals), c("{", "<-", "c", "d", "+"))

globals <- as.Globals(globals)
str(globals)
assert_identical_sets(names(globals), c("{", "<-", "c", "d", "+"))

globals <- as.Globals(unclass(globals))
str(globals)
assert_identical_sets(names(globals), c("{", "<-", "c", "d", "+"))

pkgs <- packagesOf(globals)
print(pkgs)
stopifnot(length(pkgs) == 0L)

globals <- cleanup(globals)
str(globals)
assert_identical_sets(names(globals), c("c", "d"))

pkgs <- packagesOf(globals)
print(pkgs)
stopifnot(length(pkgs) == 0L)


message("*** globalsOf() and package functions:")
foo <- globals::Globals
expr <- exprs$C
globals <- globalsOf(expr, recursive = FALSE)
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
pkgs <- packagesOf(globals)
stopifnot(pkgs == "globals")


message("*** globalsOf() and core-package functions:")
sample2 <- base::sample
sum2 <- base::sum
expr <- exprs$D
globals <- globalsOf(expr, recursive = FALSE)
str(globals)
assert_identical_sets(names(globals), c("{", "<-", "sample", "sample2", "sessionInfo", "sum", "sum2"))
where <- attr(globals, "where")
stopifnot(length(where) == length(globals))
if (!covr) stopifnot(
  identical(where$`<-`, baseenv()),
  identical(where$sample, baseenv()),
  identical(where$sample2, globalenv())
)


globals <- cleanup(globals)
str(globals)
assert_identical_sets(names(globals), c("sample2", "sum2"))
where <- attr(globals, "where")
stopifnot(length(where) == length(globals))
if (!covr) stopifnot(identical(where$sample2, globalenv()))


globals <- cleanup(globals, drop = "primitives")
str(globals)
assert_identical_sets(names(globals), c("sample2"))


message("*** globalsOf() - exceptions ...")

rm(list = "a")
res <- try({
  globals <- globalsOf({ x <- a }, substitute = TRUE, mustExist = TRUE)
}, silent = TRUE)
stopifnot(inherits(res, "try-error"))

message("*** globalsOf() - exceptions ... DONE")

source("incl/end.R")
