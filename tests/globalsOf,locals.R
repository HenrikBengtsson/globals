source("incl/start.R")

message("*** globalsOf() w/ local() ...")

for (locals in c(TRUE, FALSE)) {
  message(sprintf("- locals=%s", locals))

  f <- local({
    a <- 42
    function() a
  })
  
  globals <- globalsOf(quote(f), locals = locals)
  str(globals)
  where <- attr(globals, "where")
  if (locals) {
    stopifnot(
      length(globals) == 2L,
      identical(sort(names(globals)), c("a", "f")),
      identical(where[["a"]], environment(globals[["f"]]))
    )
  } else {
    stopifnot(
      length(globals) == 1L,
      identical(names(globals), "f")
    )
  }
  
  message(sprintf("- locals=%s with nested local():s", locals))
  
  f <- local({
    b <- 3.14
    local({
      a <- 42
      function() a + b
    })
  })
  
  globals <- globalsOf(quote(f), locals = locals)
  globals <- cleanup(globals)
  str(globals)
  where <- attr(globals, "where")
  if (locals) {
    stopifnot(
      length(globals) == 3L,
      identical(sort(names(globals)), c("a", "b", "f")),
      identical(where[["a"]], environment(globals[["f"]])),
      identical(where[["b"]], parent.env(environment(globals[["f"]])))
    )
  } else {
    stopifnot(
      length(globals) == 1L,
      identical(names(globals), "f")
    )
  }
} # for (locals ...)

message("*** globalsOf() w/ local() ... DONE")

source("incl/end.R")
