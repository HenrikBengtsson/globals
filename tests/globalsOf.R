library("globals")

## WORKAROUND: Make sure tests also work with 'covr' package
covr <- ("covr" %in% loadedNamespaces())
if (covr) {
  globalenv <- function() parent.frame()
  baseenv <- function() environment(base::sample)
}

b <- 2
c <- 3
d <- NULL
expr <- substitute({ x <- b; b <- 1; y <- c; z <- d }, env=list())

message("*** findGlobals():")
globalsC <- findGlobals(expr, method="conservative")
print(globalsC)
stopifnot(all(globalsC %in% c("{", "<-", "c", "d")))

globalsL <- findGlobals(expr, method="liberal")
print(globalsL)
stopifnot(all(globalsL %in% c("{", "<-", "b", "c", "d")))


message("*** globalsOf():")
globalsC <- globalsOf(expr, method="conservative")
str(globalsC)
stopifnot(all(names(globalsC) %in% c("{", "<-", "c", "d")))
globalsC <- cleanup(globalsC)
str(globalsC)
stopifnot(all(names(globalsC) %in% c("c", "d")))
where <- attr(globalsC, "where")
stopifnot(
  length(where) == length(globalsC),
  identical(where$c, globalenv()),
  identical(where$d, globalenv())
)

globalsL <- globalsOf(expr, method="liberal")
str(globalsL)
stopifnot(all(names(globalsL) %in% c("{", "<-", "b", "c", "d")))
globalsL <- cleanup(globalsL)
str(globalsL)
stopifnot(all(names(globalsL) %in% c("b", "c", "d")))
where <- attr(globalsL, "where")
stopifnot(
  length(where) == length(globalsL),
  identical(where$b, globalenv()),
  identical(where$c, globalenv()),
  identical(where$d, globalenv())
)


message("*** Subsetting of Globals:")
globalsL <- globalsOf(expr, method="liberal")
globalsS <- globalsL[-1]
stopifnot(length(globalsS) == length(globalsL) - 1L)
stopifnot(identical(class(globalsS), class(globalsL)))
whereL <- attr(globalsL, "where")
whereS <- attr(globalsS, "where")
stopifnot(length(whereS) == length(whereL) - 1L)
stopifnot(identical(whereS, whereL[-1]))


message("*** cleanup() & packagesOf():")
globals <- globalsOf(expr, method="conservative")
str(globals)
stopifnot(all(names(globals) %in% c("{", "<-", "c", "d")))

globals <- as.Globals(globals)
str(globals)
stopifnot(all(names(globals) %in% c("{", "<-", "c", "d")))

globals <- as.Globals(unclass(globals))
str(globals)
stopifnot(all(names(globals) %in% c("{", "<-", "c", "d")))

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
expr <- substitute({ foo(list(a=1)) })
globals <- globalsOf(expr)
str(globals)
stopifnot(all(names(globals) %in% c("{", "foo", "list")))
where <- attr(globals, "where")
stopifnot(
  length(where) == length(globals),
  identical(where$`{`, baseenv()),
  covr || identical(where$foo, globalenv()),
  identical(where$list, baseenv())
)

globals <- cleanup(globals)
str(globals)
stopifnot(all(names(globals) %in% c("foo")))
pkgs <- packagesOf(globals)
stopifnot(pkgs == "globals")


message("*** globalsOf() and core-package functions:")
sample2 <- base::sample
expr <- substitute({ x <- sample(10); y <- sample2(10) }, env=list())
globals <- globalsOf(expr)
str(globals)
stopifnot(all(names(globals) %in% c("{", "<-", "sample", "sample2")))
where <- attr(globals, "where")
stopifnot(
  length(where) == length(globals),
  identical(where$`<-`, baseenv()),
  identical(where$sample, baseenv()),
  covr || identical(where$sample2, globalenv())
)

globals <- cleanup(globals)
str(globals)
stopifnot(length(globals) == 0L)
where <- attr(globals, "where")
stopifnot(length(where) == length(globals))
