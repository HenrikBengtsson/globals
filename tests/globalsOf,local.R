source("incl/start.R")

message("*** globalsOf() w/ local() ...")

message("- assert local environment is preserved")

f <- local({
  a <- 42
  function() a
})

globals <- globalsOf(quote(f))
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 2L,
  identical(sort(names(globals)), c("a", "f")),
  identical(where[["a"]], environment(globals[["f"]]))
)


message("- assert nested local environments are preserved")

f <- local({
  b <- 3.14
  local({
    a <- 42
    function() a + b
  })
})

globals <- globalsOf(quote(f))
globals <- cleanup(globals)
str(globals)
where <- attr(globals, "where")
stopifnot(
  length(globals) == 3L,
  identical(sort(names(globals)), c("a", "b", "f")),
  identical(where[["a"]], environment(globals[["f"]])),
  identical(where[["b"]], parent.env(environment(globals[["f"]])))
)

message("*** globalsOf() w/ local() ... DONE")

source("incl/end.R")
