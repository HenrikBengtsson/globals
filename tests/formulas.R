library("globals")

message("findGlobals() with formula ...")

g <- findGlobals(. ~ x + y : z, substitute = TRUE)
print(g)
stopifnot(all(c("~", ".", "+", "x", ":", "y", "z") %in% g))

g <- findGlobals(map(1L, ~ typeof(.x)), substitute = TRUE)
print(g)
stopifnot(all(c("map", "~", "typeof", ".x") %in% g))

message("findGlobals() with formula ... DONE")


message("globalsOf() with formula ...")

foo <- function(x) {
  map(1L, ~ typeof(x + .x))
}

g <- globalsOf(foo(1L), substitute = TRUE, mustExist = FALSE)
str(g)
stopifnot(all(
  c("foo", "map", "{", "~", "typeof", "+", "x", ".x") %in% names(g)
))

message("globalsOf() with formula ... DONE")

rm(list = "g")
