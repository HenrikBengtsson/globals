source("incl/start.R")

message("findGlobals() with formula ...")

g <- findGlobals(. ~ x + y : z, substitute = TRUE)
print(g)
assert_identical_sets(g, c("~", ".", "+", "x", ":", "y", "z"))

g <- findGlobals(map(1L, ~ typeof(.x)), substitute = TRUE)
print(g)
assert_identical_sets(g, c("map", "~", "typeof", ".x"))


message("- findGlobals() with NULL in the formula ...")
## BUG: https://github.com/HenrikBengtsson/globals/issues/59
for (substitute in c(TRUE, FALSE)) {
  message("- substitute = ", substitute)
  
  g <- findGlobals(. ~ NULL, substitute = substitute)
  print(g)
  assert_identical_sets(g, c(".", "~"))

  g <- findGlobals(NULL ~ NULL, substitute = substitute)
  print(g)
  assert_identical_sets(g, c("~"))

  g <- findGlobals(~ NULL, substitute = substitute)
  print(g)
  assert_identical_sets(g, c("~"))

  g <- findGlobals(NULL ~ ., substitute = substitute)
  print(g)
  assert_identical_sets(g, c("~", "."))
}

# ## substitute=FALSE
# Browse[2]> str(expr)
#  language ~NULL
# 
# ## substitute=TRUE
# Browse[2]> str(expr)
# Class 'formula'  language ~NULL
#   ..- attr(*, ".Environment")=<environment: R_GlobalEnv> 


message("findGlobals() with formula ... DONE")


message("globalsOf() with formula ...")

foo <- function(x) {
  map(1L, ~ typeof(x + .x))
}

g <- globalsOf(foo(1L), substitute = TRUE, mustExist = FALSE)
str(g)
assert_identical_sets(names(g), c("foo", "map", "{", "~", "typeof", "+", "x", ".x"))

message("globalsOf() with formula ... DONE")

source("incl/end.R")
