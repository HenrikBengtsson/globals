source("incl/globals.R")

## Record original state
ovars <- ls()
oenvs <- oenvs0 <- Sys.getenv()
oopts0 <- options()

## Default options for tests
oopts <- options()

## Private global functions
as_function <- globals:::as_function
is_base_pkg <- globals:::is_base_pkg
is.base <- globals:::is.base
is_internal <- globals:::is_internal
where <- globals:::where
mdebug <- globals:::mdebug
envname <- globals:::envname


assert_identical_sets <- function(a, b) {
  a <- sort(a)
  b <- sort(b)
  if (!identical(a, b)) {
    stop(sprintf("Non-identical sets: %s != %s",
         paste(sQuote(a), collapse = ", "),
         paste(sQuote(b), collapse = ", ")))
  }
}


## WORKAROUND: Make sure tests also work with 'covr' package
covr <- ("covr" %in% loadedNamespaces())
if (covr) {
  globalenv <- function() parent.frame()
  baseenv <- function() environment(base::sample)
}

