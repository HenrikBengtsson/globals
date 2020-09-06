source("incl/start.R")

options(warn = 1L)

exprs <- list(
  ok1   = quote(function(...) sum(x, ...)),
  warn1 = quote(sum(x, ...)),
  ok2   = quote(function(...) sum(x, ..1, ..2, ..3)),
  warn2 = quote(sum(x, ..1, ..2, ..3))
)


message("*** findGlobals() ...")


for (name in names(exprs)) {
  expr <- exprs[[name]]

  message("\n*** codetools::findGlobals():")
  fun <- globals:::as_function(expr)
  print(fun)
  globals <- codetools::findGlobals(fun)
  print(globals)
  assert_identical_sets(globals, c("sum", "x"))

  message("\n*** findGlobals(dotdotdot = 'ignore'):")
  cat(sprintf("Expression '%s':\n", name))
  print(expr)
  globals <- findGlobals(expr, dotdotdot = "ignore")
  print(globals)
  assert_identical_sets(globals, c("sum", "x"))

  message("\n*** findGlobals(dotdotdot = 'return'):")
  cat(sprintf("Expression '%s':\n", name))
  print(expr)
  globals <- findGlobals(expr, dotdotdot = "return")
  print(globals)
  if (name == "ok1") {
    assert_identical_sets(globals, c("sum", "x"))
  } else if (name == "warn1") {
    assert_identical_sets(globals, c("sum", "x", "..."))
  }

  message("\n*** findGlobals(dotdotdot = 'warn'):")
  cat(sprintf("Expression '%s':\n", name))
  print(expr)
  globals <- findGlobals(expr, dotdotdot = "warn")
  print(globals)
  if (name == "ok1") {
    assert_identical_sets(globals, c("sum", "x"))
  } else if (name == "warn1") {
    assert_identical_sets(globals, c("sum", "x", "..."))
  }

  message("\n*** findGlobals(dotdotdot = 'error'):")
  cat(sprintf("Expression '%s':\n", name))
  print(expr)
  globals <- tryCatch(findGlobals(expr, dotdotdot = "error"), error = identity)
  if (name == "ok1") {
    assert_identical_sets(globals, c("sum", "x"))
  } else if (name == "warn1") {
    stopifnot(inherits(globals, "error"))
  }
} # for (name ...)

message("\n*** findGlobals(<exprs>, dotdotdot = 'return'):")
print(exprs)
globals <- findGlobals(exprs, dotdotdot = "return")
print(globals)


message("*** findGlobals() ... DONE")



message("*** globalsOf() ...")

x <- 1:2

for (name in names(exprs)) {
  expr <- exprs[[name]]

  message("\n*** globalsOf(dotdotdot = 'ignore'):")
  cat(sprintf("Expression '%s':\n", name))
  print(expr)
  globals <- globalsOf(expr, dotdotdot = "ignore")
  print(globals)
  assert_identical_sets(names(globals), c("sum", "x"))
  stopifnot(all.equal(globals$sum, base::sum))
  stopifnot(all.equal(globals$x, x))

  message("\n*** globalsOf(dotdotdot = 'return'):")
  cat(sprintf("Expression '%s':\n", name))
  print(expr)
  globals <- globalsOf(expr, dotdotdot = "return")
  print(globals)
  if (name == "ok1") {
    assert_identical_sets(names(globals), c("sum", "x"))
  } else if (name == "warn1") {
    assert_identical_sets(names(globals), c("sum", "x", "..."))
    stopifnot(!is.list(globals$`...`) && is.na(globals$`...`))
  }
  stopifnot(all.equal(globals$sum, base::sum))
  stopifnot(all.equal(globals$x, x))

  message("\n*** globalsOf(dotdotdot = 'warn'):")
  cat(sprintf("Expression '%s':\n", name))
  print(expr)
  globals <- globalsOf(expr, dotdotdot = "warn")
  print(globals)
  if (name == "ok1") {
    assert_identical_sets(names(globals), c("sum", "x"))
  } else if (name == "warn1") {
    assert_identical_sets(names(globals), c("sum", "x", "..."))
    stopifnot(!is.list(globals$`...`) && is.na(globals$`...`))
  }
  stopifnot(all.equal(globals$sum, base::sum))
  stopifnot(all.equal(globals$x, x))

  message("\n*** globalsOf(dotdotdot = 'error'):")
  cat(sprintf("Expression '%s':\n", name))
  print(expr)
  globals <- tryCatch(globalsOf(expr, dotdotdot = "error"), error = identity)
  if (name == "ok1") {
    assert_identical_sets(names(globals), c("sum", "x"))
    stopifnot(all.equal(globals$sum, base::sum))
    stopifnot(all.equal(globals$x, x))
  } else if (name == "warn1") {
    stopifnot(inherits(globals, "error"))
  }
} # for (name ...)

message("\n*** globalsOf(<exprs>, dotdotdot = 'return'):")
print(exprs)
globals <- globalsOf(exprs, dotdotdot = "return")
print(globals)


message("*** globalsOf() ... DONE")


message("*** function(x, ...) globalsOf() ...")

aux <- function(x, ..., exprs) {
  args <- list(...)

for (name in names(exprs)) {
  expr <- exprs[[name]]

  message("\n*** globalsOf(dotdotdot = 'ignore'):")
  cat(sprintf("Expression '%s':\n", name))
  print(expr)
  globals <- globalsOf(expr, dotdotdot = "ignore")
  print(globals)
  assert_identical_sets(names(globals), c("sum", "x"))
  stopifnot(all.equal(globals$sum, base::sum))
  stopifnot(all.equal(globals$x, x))

  message("\n*** globalsOf(dotdotdot = 'return'):")
  cat(sprintf("Expression '%s':\n", name))
  print(expr)
  globals <- globalsOf(expr, dotdotdot = "return")
  print(globals)
  if (name == "ok1") {
    assert_identical_sets(names(globals), c("sum", "x"))
  } else if (name == "warn1") {
    assert_identical_sets(names(globals), c("sum", "x", "..."))
    stopifnot(all.equal(globals$`...`, args, check.attributes = FALSE))
  }
  stopifnot(all.equal(globals$sum, base::sum))
  stopifnot(all.equal(globals$x, x))

  message("\n*** globalsOf(dotdotdot = 'warn'):")
  cat(sprintf("Expression '%s':\n", name))
  print(expr)
  globals <- globalsOf(expr, dotdotdot = "warn")
  print(globals)
  if (name == "ok1") {
    assert_identical_sets(names(globals), c("sum", "x"))
  } else if (name == "warn1") {
    assert_identical_sets(names(globals), c("sum", "x", "..."))
    stopifnot(all.equal(globals$`...`, args, check.attributes = FALSE))
  }
  stopifnot(all.equal(globals$sum, base::sum))
  stopifnot(all.equal(globals$x, x))

  message("\n*** globalsOf(dotdotdot = 'error'):")
  cat(sprintf("Expression '%s':\n", name))
  print(expr)
  globals <- tryCatch(globalsOf(expr, dotdotdot = "error"), error = identity)
  if (name == "ok1") {
    assert_identical_sets(names(globals), c("sum", "x"))
    stopifnot(all.equal(globals$sum, base::sum))
    stopifnot(all.equal(globals$x, x))
  } else if (name == "warn1") {
    stopifnot(inherits(globals, "error"))
  }
} # for (name ...)

message("\n*** globalsOf(<exprs>, dotdotdot = 'return'):")
print(exprs)
globals <- globalsOf(exprs, dotdotdot = "return")
print(globals)

} # aux()

aux(x = 3:4, y = 1, z = 42L, exprs = exprs)
message("*** function(x, ...) globalsOf() ... DONE")


## Cleanup
source("incl/end.R")
