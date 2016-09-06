library("globals")

a <- 1
b <- 2

message("*** Globals() ...")

globals0 <- globalsByName(c("a", "rnorm"))

globals <- globals0
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 2L,
  length(where) == length(globals),
  all(names(globals) == c("a", "rnorm")),
  all(names(globals) == names(where))
)

message("*** Globals() - names ...")

globals <- globals0
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 2L,
  length(where) == length(globals),
  all(names(globals) == c(names(globals0))),
  all(names(globals) == names(where))
)

names(globals)[1] <- "A"
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 2L,
  length(where) == length(globals),
  all(names(globals) == c("A", names(globals0)[-1])),
  all(names(globals) == names(where))
)

message("*** Globals() - names ... DONE")

message("*** Globals() - subsetting ...")

globals <- globals0[1]
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 1L,
  length(where) == length(globals),
  all(names(globals) == c("a")),
  all(names(globals) == names(where))
)

globals <- globals0[2]
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 1L,
  length(where) == length(globals),
  all(names(globals) == c("rnorm")),
  all(names(globals) == names(where))
)

globals <- globals0[2:1]
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 2L,
  length(where) == length(globals),
  all(names(globals) == c("rnorm", "a")),
  all(names(globals) == names(where))
)

## rev() works automatically thanks to `[`() :)
globals <- rev(globals0)
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 2L,
  length(where) == length(globals),
  all(names(globals) == rev(names(globals0))),
  all(names(globals) == names(where)),
  identical(rev(globals), globals0)
)

message("*** Globals() - subsetting ... DONE")


message("*** Globals() - combining ...")

globalsA <- globals0[1:2]
globalsB <- globals0[1:2]
globals <- c(globalsA, globalsB)
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 4L,
  length(where) == length(globals),
  all(names(globals) == c(names(globalsA), names(globalsB))),
  all(names(globals) == names(where))
)

message("*** Globals() - combining ... DONE")


message("*** Globals() - unique ...")

globals <- globals0[c(1:2, 1:2, 1:2)]
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 6L,
  length(where) == length(globals),
  all(names(globals) == rep(names(globals0), times=3L)),
  all(names(globals) == names(where))
)

globals <- unique(globals)
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == length(globals0),
  length(where) == length(globals),
  all(names(globals) == names(globals0)),
  all(names(globals) == names(where))
)

message("*** Globals() - unique ... DONE")


message("*** Globals() - exceptions ...")

res <- tryCatch({ Globals(NULL) }, error = identity)
stopifnot(inherits(res, "simpleError"))

res <- tryCatch({ Globals(list(1,2)) }, error = identity)
stopifnot(inherits(res, "simpleError"))

res <- tryCatch({ Globals(list(a=1,2)) }, error = identity)
stopifnot(inherits(res, "simpleError"))

message("*** Globals() - exceptions ... DONE")

message("*** Globals() ... DONE")
