library("globals")

## WORKAROUND: Make sure tests also work with 'covr' package
covr <- ("covr" %in% loadedNamespaces())
if (covr) {
  globalenv <- function() parent.frame()
  baseenv <- function() environment(base::sample)
}


message("*** globalsOf() w/ locally defined S3 methods ...")

foo <- function(x, ...) UseMethod("foo")

foo.integer <- function(x, ...) {
  sum(x == 1L)
}

foo.numeric <- function(x, ...) {
  sum(abs(x - 3.14) < 0.1)
}

x <- 0:2
globals <- globalsOf({
  foo(x)
}, substitute = TRUE)
str(globals)
globals <- cleanup(globals)
str(globals)
stopifnot(all(c("foo", "x", "foo.integer", "foo.numeric") %in% names(globals)))
stopifnot(length(packagesOf(globals)) == 0L)

message("*** globalsOf() w/ locally defined S3 methods ... DONE")
