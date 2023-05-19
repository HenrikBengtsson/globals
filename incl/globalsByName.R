f <- function(x = 42, ...) {
  globalsByName("x")
}

globals <- f()
str(globals)

globals <- f(3.14)
str(globals)


g <- function(x = 42, ...) {
  globalsByName("...")
}

globals <- g()
str(globals)

globals <- g(3.14)
str(globals)

globals <- g(3.14, 1L, b = 2L, c = 3L)
str(globals)


h <- function(x = 42, ...) {
  globalsByName("..2")
}

globals <- h()
str(globals)

globals <- g(3.14)
str(globals)

globals <- g(3.14, 1L, b = 2L, c = 3L)
str(globals)
