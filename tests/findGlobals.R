source("incl/start.R")


message("*** findGlobals() ...")

message(" ** findGlobals(..., method = 'conservative'):")

expr <- exprs$A
globals_c <- findGlobals(expr, method = "conservative")
print(globals_c)
assert_identical_sets(globals_c, c("{", "<-", "c", "d", "+"))

message(" ** findGlobals(..., method = 'liberal'):")

expr <- exprs$A
globals_l <- findGlobals(expr, method = "liberal")
print(globals_l)
assert_identical_sets(globals_l, c("{", "<-", "b", "c", "d", "+", "a", "e"))

message(" ** findGlobals(..., method = 'ordered'):")

expr <- exprs$A
globals_i <- findGlobals(expr, method = "ordered")
print(globals_i)
assert_identical_sets(globals_i, c("{", "<-", "b", "c", "d", "+", "a", "e"))

globals_i <- findGlobals(function() {
  a <- a + 1
  a
})
print(globals_i)
assert_identical_sets(globals_i, c("{", "<-", "a", "+"))

globals_i <- findGlobals(function() {
  a
  a <- a + 1
})
print(globals_i)
assert_identical_sets(globals_i, c("{", "a", "<-", "+"))

globals_i <- findGlobals(function(x) x <- x)
print(globals_i)
assert_identical_sets(globals_i, c("<-"))


message(" ** findGlobals(..., tweak):")
tweak_another_expression <- function(expr) {
  quote({
    x <- B
    B <- 1
    y <- C
    z <- D
  })
}

expr <- exprs$A
globals_i <- findGlobals(expr, tweak = tweak_another_expression)
assert_identical_sets(globals_i, c("{", "<-", "B", "C", "D"))

message(" ** findGlobals(..., trace = TRUE):")

expr <- exprs$A
globals_i <- findGlobals(expr, trace = TRUE)
print(globals_i)
assert_identical_sets(globals_i, c("{", "<-", "b", "c", "d", "+", "a", "e"))

message(" ** findGlobals(a <- pkg::a):")
expr <- exprs$B
globals_i <- findGlobals(expr)
print(globals_i)
assert_identical_sets(globals_i, c("<-", "::"))

message(" ** findGlobals(a[1] <- 0) etc.:")

globals_i <- findGlobals(a[1] <- 0, substitute = TRUE)
print(globals_i)
false_globals <- "["
assert_identical_sets(setdiff(globals_i, false_globals), c("<-", "a", "[<-"))

globals_i <- findGlobals({ a[1] = 0 }, substitute = TRUE)
print(globals_i)
false_globals <- "["
assert_identical_sets(setdiff(globals_i, false_globals), c("{", "=", "a", "[<-"))

globals_i <- findGlobals(a[b <- 1] <- 0, substitute = TRUE)
print(globals_i)
false_globals <- "["
assert_identical_sets(setdiff(globals_i, false_globals), c("<-", "a", "[<-"))

globals_i <- findGlobals(a[b = 1] <- 0, substitute = TRUE)
print(globals_i)
false_globals <- "["
assert_identical_sets(setdiff(globals_i, false_globals), c("<-", "a", "[<-"))

globals_i <- findGlobals({ a[b <- 1] = 0 }, substitute = TRUE)
print(globals_i)
false_globals <- "["
assert_identical_sets(setdiff(globals_i, false_globals), c("{", "=", "a", "<-", "[<-"))

globals_i <- findGlobals(a$b <- 0, substitute = TRUE)
print(globals_i)
false_globals <- "$"
assert_identical_sets(setdiff(globals_i, false_globals), c("<-", "a", "$<-"))

globals_i <- findGlobals({ a$b = 0 }, substitute = TRUE)
print(globals_i)
false_globals <- "$"
assert_identical_sets(setdiff(globals_i, false_globals), c("{", "=", "a", "$<-"))

globals_i <- findGlobals(names(a) <- "A", substitute = TRUE)
print(globals_i)
assert_identical_sets(globals_i, c("<-", "a", "names", "names<-"))

globals_i <- findGlobals({ names(a) = "A" }, substitute = TRUE)
print(globals_i)
assert_identical_sets(globals_i, c("{", "=", "a", "names", "names<-"))

## In order to handle the following case, we have to accept a few
## false positives (`[`, `[[`, `$`, `[<-`, `[[<-`)
globals_i <- findGlobals(names(a)[1] <- "A", substitute = TRUE)
print(globals_i)
false_globals <- c("[", "[<-")
assert_identical_sets(setdiff(globals_i, false_globals), c("<-", "a", "names", "names<-"))

globals_i <- findGlobals({ names(a)[1] = "A" }, substitute = TRUE)
print(globals_i)
false_globals <- c("[", "[<-")
assert_identical_sets(setdiff(globals_i, false_globals), c("{", "=", "a", "names", "names<-"))

# BUG: https://github.com/HenrikBengtsson/globals/issues/60
expr <- as.call(list(function(...) GLOBAL, quote(ARG)))
for (method in c("conservative", "liberal", "ordered")) {
  globals_i <- findGlobals(expr, method = method)
  print(globals_i)
  assert_identical_sets(globals_i, c("GLOBAL", "ARG"))
}

message("*** findGlobals() ... DONE")

source("incl/end.R")
