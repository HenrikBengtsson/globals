source("incl/start.R")

## WORKAROUND: Avoid problem reported in testthat Issue #229, which
## causes covr::package_coverage() to given an error. /HB 2015-02-16
suppressWarnings({
  rm(list = c("a", "b", "c", "x", "y", "z", "square",
            "pathname", "url", "filename"))
})


message("Setting up expressions")
exprs <- list(
  A = quote({
    Sys.sleep(1)
    x <- 0.1
  }),
  B = quote({ y <- 0.2 }),
  C = quote({ z <- a + 0.3 }),
  D = quote({ pathname <- file.path(dirname(url), filename) }),
  E = quote({ b <- c }),
  F = quote({
    a <- { runif(1) }
    b <- { rnorm(1) }
    x <- a * b
    abs(x)
  }),
  G = quote({
    y <- square(a)
  }),
  H = quote({
    b <- a
    a <- 1
  })
)

atleast <- list(
  A = c(),
  B = c(),
  C = c("a"),
  D = c("filename"),
  E = c("c"),
  F = c(),
  G = c("a", "square"),
  H = c() ## FIXME: Should be c("a"), cf. Issue #5.
)

not <- list(
  A = c("x"),
  B = c("y"),
  C = c("z"),
  D = c("pathname"),
  E = c("b"),
  F = c("a", "b", "x"),
  G = c(),
  H = c()
)


## Define globals
a <- 3.14
c <- 2.71
square <- function(x) x ^ 2
filename <- "index.html"
# Yes, pretend we forget 'url'

message("Find globals")
for (kk in seq_along(exprs)) {
  key <- names(exprs)[kk]
  expr <- exprs[[key]]
  cat(sprintf("Expression #%d ('%s'):\n", kk, key))
  print(expr)

  names <- findGlobals(expr, method = "conservative")
  cat(sprintf("Globals: %s\n", paste(sQuote(names), collapse = ", ")))
  stopifnot(all(atleast[[key]] %in% names))
  stopifnot(!any(names %in% not[[key]]))

  globals <- globalsOf(expr, method = "conservative")
  cat(sprintf("Globals: %s\n", paste(sQuote(names(globals)), collapse = ", ")))
  stopifnot(all(atleast[[key]] %in% names(globals)))
  stopifnot(!any(names(globals) %in% not[[key]]))
  str(globals)

  cat("\n")
}

names <- findGlobals(exprs, method = "conservative", unlist = TRUE)
cat(sprintf("Globals: %s\n", paste(sQuote(names), collapse = ", ")))

## Cleanup
source("incl/end.R")
