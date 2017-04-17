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


message("*** Globals() - subsetted assignment ...")

globals <- globals0
globals$a <- globals0["a"]
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 2L,
  length(where) == length(globals),
  all(names(globals) == names(globals0)),
  all(names(globals) == names(where)),
  identical(globals, globals0)
)

globals <- globals0
globals$b <- globals0["a"]
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 3L,
  length(where) == length(globals),
  all(names(globals) == c(names(globals0), "b")),
  all(names(globals) == names(where)),
  identical(globals$b, globals0$a)
)

globals <- globals0
globals$a <- NULL
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 1L,
  length(where) == length(globals),
  all(names(globals) == names(globals0)[-1]),
  all(names(globals) == names(where)),
  is.null(globals$a)
)

globals <- globals0
globals$a <- 1:2
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 2L,
  length(where) == length(globals),
  all(names(globals) == names(globals0)),
  all(names(globals) == names(where)),
  identical(globals$a, 1:2)
)

message("*** Globals() - subsetted assignment ... DONE")


message("*** Globals() - combining ...")

globals_a <- globals0[1:2]
globals_b <- globals0[1:2]
globals <- c(globals_a, globals_b)
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 4L,
  length(where) == length(globals),
  all(names(globals) == c(names(globals_a), names(globals_b))),
  all(names(globals) == names(where))
)

globals_a <- globals0[1:2]
globals_b <- list(b = 1, c = letters)
globals <- c(globals_a, globals_b)
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 4L,
  length(where) == length(globals),
  all(names(globals) == c(names(globals_a), names(globals_b))),
  all(names(globals) == names(where))
)

globals_a <- globals0[1:2]
globals_b <- list()
globals <- c(globals_a, globals_b)
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 2L,
  length(where) == length(globals),
  all(names(globals) == c(names(globals_a), names(globals_b))),
  all(names(globals) == names(where))
)

globals_a <- globals0[1:2]
globals <- c(globals_a, b = 1, c = letters)
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 4L,
  length(where) == length(globals),
  all(names(globals) == c(names(globals_a), "b", "c")),
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
  all(names(globals) == rep(names(globals0), times = 3L)),
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


message("*** Globals() - coercion ...")

globals <- as.Globals(globals0)
stopifnot(identical(globals, globals0))

globals <- as.Globals(unclass(globals0))
stopifnot(identical(globals, globals0))

globals_t <- unclass(globals0)
attr(globals_t, "where") <- NULL
globals <- as.Globals(globals_t)
stopifnot(
  length(globals) == length(globals0),
  names(globals) == names(globals0)
)

message("*** Globals() - coercion ... DONE")


message("*** Globals() - empty ...")

globals <- Globals()
globals <- Globals(list())
globals <- as.Globals(list())

message("*** Globals() - empty ... DONE")


message("*** Globals() - exceptions ...")

res <- tryCatch({ Globals(NULL) }, error = identity)
stopifnot(inherits(res, "simpleError"))

res <- tryCatch({ Globals(list(1, 2)) }, error = identity)
stopifnot(inherits(res, "simpleError"))

res <- tryCatch({ Globals(list(a = 1, 2)) }, error = identity)
stopifnot(inherits(res, "simpleError"))

## Assigning more than one element
globals <- globals0
res <- tryCatch({ globals$a <- globals0[2:1] }, error = identity)
stopifnot(inherits(res, "simpleError"))

## Appending unnamed objects
res <- tryCatch({ c(globals0, 2) }, error = identity)
stopifnot(inherits(res, "simpleError"))

message("*** Globals() - exceptions ... DONE")

message("*** Globals() ... DONE")
