library("globals")

## WORKAROUND: Make sure tests also work with 'covr' package
covr <- ("covr" %in% loadedNamespaces())
if (covr) {
  globalenv <- function() parent.frame()
  baseenv <- function() environment(base::sample)
}

a <- 0
b <- 2
c <- 3
d <- NULL
e <- function() TRUE
expr <- substitute({ x <- b; b <- 1; y <- c; z <- d; a <- a + 1; e <- e() }, env = list())

message("*** findGlobals() ...")

message(" ** findGlobals(..., method = 'conservative'):")
globals_c <- findGlobals(expr, method = "conservative")
print(globals_c)
stopifnot(all(globals_c %in% c("{", "<-", "c", "d", "+")))

message(" ** findGlobals(..., method = 'liberal'):")
globals_l <- findGlobals(expr, method = "liberal")
print(globals_l)
stopifnot(all(globals_l %in% c("{", "<-", "b", "c", "d", "+", "a", "e")))

message(" ** findGlobals(..., method = 'ordered'):")
globals_i <- findGlobals(expr, method = "ordered")
print(globals_i)
stopifnot(all(globals_i %in% c("{", "<-", "b", "c", "d", "+", "a", "e")))

message(" ** findGlobals(..., tweak):")
tweak_another_expression <- function(expr) {
  substitute({ x <- B; B <- 1; y <- C; z <- D }, env = list())
}
globals_i <- findGlobals(expr, tweak = tweak_another_expression)
stopifnot(all(globals_i %in% c("{", "<-", "B", "C", "D")))

message(" ** findGlobals(..., trace = TRUE):")
globals_i <- findGlobals(expr, trace = TRUE)
print(globals_i)
stopifnot(all(globals_i %in% c("{", "<-", "b", "c", "d", "+", "a", "e")))

message("*** findGlobals() ... DONE")


message("*** globalsByName() ...")

globals_c <- globalsByName(c("{", "<-", "c", "d"))
str(globals_c)
stopifnot(all(names(globals_c) %in% c("{", "<-", "c", "d")))
globals_c <- cleanup(globals_c)
str(globals_c)
stopifnot(all(names(globals_c) %in% c("c", "d")))
where <- attr(globals_c, "where")
stopifnot(
  length(where) == length(globals_c),
  identical(where$c, globalenv()),
  identical(where$d, globalenv())
)

foo <- globals::Globals
globals <- globalsByName(c("{", "foo", "list"), recursive = FALSE)
str(globals)
stopifnot(all(names(globals) %in% c("{", "foo", "list")))
where <- attr(globals, "where")
stopifnot(length(where) == length(globals))
if (!covr) stopifnot(
  identical(where$`{`, baseenv()),
  identical(where$foo, globalenv()),
  identical(where$list, baseenv())
)

globals <- cleanup(globals)
str(globals)
stopifnot(all(names(globals) %in% c("foo")))
globals <- cleanup(globals, drop = "internals")
str(globals)
stopifnot(all(names(globals) %in% c("foo")))
pkgs <- packagesOf(globals)
stopifnot(pkgs == "globals")

message("*** globalsByName() ... DONE")


message("*** globalsOf() ...")

message(" ** globalsOf(..., method = 'conservative'):")
globals_c <- globalsOf(expr, method = "conservative")
str(globals_c)
stopifnot(all(names(globals_c) %in% c("{", "<-", "c", "d", "+")))
globals_c <- cleanup(globals_c)
str(globals_c)
stopifnot(all(names(globals_c) %in% c("c", "d")))
where <- attr(globals_c, "where")
stopifnot(
  length(where) == length(globals_c),
  identical(where$c, globalenv()),
  identical(where$d, globalenv())
)

message(" ** globalsOf(..., method = 'liberal'):")
globals_l <- globalsOf(expr, method = "liberal")
str(globals_l)
stopifnot(all(names(globals_l) %in% c("{", "<-", "b", "c", "d", "+", "a", "e")))
globals_l <- cleanup(globals_l)
str(globals_l)
stopifnot(all(names(globals_l) %in% c("b", "c", "d", "a", "e")))
where <- attr(globals_l, "where")
stopifnot(
  length(where) == length(globals_l),
  identical(where$b, globalenv()),
  identical(where$c, globalenv()),
  identical(where$d, globalenv())
)

message(" ** globalsOf(..., method = 'ordered'):")
globals_i <- globalsOf(expr, method = "ordered")
str(globals_i)
stopifnot(all(names(globals_i) %in% c("{", "<-", "b", "c", "d", "+", "a", "e")))
globals_i <- cleanup(globals_i)
str(globals_i)
stopifnot(all(names(globals_i) %in% c("b", "c", "d", "a", "e")))
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
  stopifnot(all(names(globals) %in% c("{", "foo")),
            !any("a" %in% names(globals)))
  globals <- cleanup(globals)
  str(globals)
  stopifnot(all(names(globals) %in% c("foo"),
                !any("a" %in% names(globals))))

  globals <- globalsOf({ foo(3) }, substitute = TRUE, method = "ordered",
                         recursive = TRUE, mustExist = FALSE)
  stopifnot(all(names(globals) %in% c("{", "foo", "bar", "-", "a")))
  globals <- cleanup(globals)
  str(globals)
  stopifnot(all(names(globals) %in% c("foo", "bar", "a")))

  globals <- globalsOf({ foo(3) }, substitute = TRUE,
                         recursive = TRUE, mustExist = FALSE)
  stopifnot(all(names(globals) %in% c("{", "foo", "bar", "-", "a")))
  globals <- cleanup(globals)
  str(globals)
  stopifnot(all(names(globals) %in% c("foo", "bar", "a")))
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
globals_l <- globalsOf(expr, method = "liberal")
globals_s <- globals_l[-1]
stopifnot(length(globals_s) == length(globals_l) - 1L)
stopifnot(identical(class(globals_s), class(globals_l)))
where_l <- attr(globals_l, "where")
where_s <- attr(globals_s, "where")
stopifnot(length(where_s) == length(where_l) - 1L)
stopifnot(identical(where_s, where_l[-1]))


message("*** cleanup() & packagesOf():")
globals <- globalsOf(expr, method = "conservative")
str(globals)
stopifnot(all(names(globals) %in% c("{", "<-", "c", "d", "+")))

globals <- as.Globals(globals)
str(globals)
stopifnot(all(names(globals) %in% c("{", "<-", "c", "d", "+")))

globals <- as.Globals(unclass(globals))
str(globals)
stopifnot(all(names(globals) %in% c("{", "<-", "c", "d", "+")))

pkgs <- packagesOf(globals)
print(pkgs)
stopifnot(length(pkgs) == 0L)

globals <- cleanup(globals)
str(globals)
stopifnot(all(names(globals) %in% c("c", "d")))

pkgs <- packagesOf(globals)
print(pkgs)
stopifnot(length(pkgs) == 0L)


message("*** globalsOf() and package functions:")
foo <- globals::Globals
expr <- substitute({ foo(list(a = 1)) })
globals <- globalsOf(expr, recursive = FALSE)
str(globals)
stopifnot(all(names(globals) %in% c("{", "foo", "list")))
where <- attr(globals, "where")
stopifnot(length(where) == length(globals))
if (!covr) stopifnot(
  identical(where$`{`, baseenv()),
  identical(where$foo, globalenv()),
  identical(where$list, baseenv())
)

globals <- cleanup(globals)
str(globals)
stopifnot(all(names(globals) %in% c("foo")))
pkgs <- packagesOf(globals)
stopifnot(pkgs == "globals")


message("*** globalsOf() and core-package functions:")
sample2 <- base::sample
sum2 <- base::sum
expr <- substitute({
  x <- sample(10)
  y <- sum(x)
  x2 <- sample2(10)
  y2 <- sum2(x)
  s <- sessionInfo()
}, env = list())
globals <- globalsOf(expr, recursive = FALSE)
str(globals)
stopifnot(all(names(globals) %in%
              c("{", "<-", "sample", "sample2", "sessionInfo", "sum", "sum2")))
where <- attr(globals, "where")
stopifnot(length(where) == length(globals))
if (!covr) stopifnot(
  identical(where$`<-`, baseenv()),
  identical(where$sample, baseenv()),
  identical(where$sample2, globalenv())
)


globals <- cleanup(globals)
str(globals)
stopifnot(all(names(globals) %in% c("sample2", "sum2")))
where <- attr(globals, "where")
stopifnot(length(where) == length(globals))
if (!covr) stopifnot(identical(where$sample2, globalenv()))


globals <- cleanup(globals, drop = "primitives")
str(globals)
stopifnot(all(names(globals) %in% c("sample2")))


message("*** globalsOf() - exceptions ...")

rm(list = "a")
res <- try({
  globals <- globalsOf({ x <- a }, substitute = TRUE, mustExist = TRUE)
}, silent = TRUE)
stopifnot(inherits(res, "try-error"))

message("*** globalsOf() - exceptions ... DONE")


message("*** Globals() - exceptions ...")

res <- tryCatch({ Globals(NULL) }, error = identity)
stopifnot(inherits(res, "simpleError"))

res <- tryCatch({ Globals(list(1, 2)) }, error = identity)
stopifnot(inherits(res, "simpleError"))

res <- tryCatch({ Globals(list(a = 1, 2)) }, error = identity)
stopifnot(inherits(res, "simpleError"))

message("*** Globals() - exceptions ... DONE")
