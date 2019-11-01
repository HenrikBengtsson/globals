source("incl/start.R")

message("*** findGlobals() ...")

message(" ** findGlobals(..., method = 'conservative'):")

expr <- exprs$A
globals_c <- findGlobals(expr, method = "conservative")
print(globals_c)
stopifnot(all(globals_c %in% c("{", "<-", "c", "d", "+")))

message(" ** findGlobals(..., method = 'liberal'):")

expr <- exprs$A
globals_l <- findGlobals(expr, method = "liberal")
print(globals_l)
stopifnot(all(globals_l %in% c("{", "<-", "b", "c", "d", "+", "a", "e")))

message(" ** findGlobals(..., method = 'ordered'):")

expr <- exprs$A
globals_i <- findGlobals(expr, method = "ordered")
print(globals_i)
stopifnot(all(globals_i %in% c("{", "<-", "b", "c", "d", "+", "a", "e")))

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
stopifnot(all(globals_i %in% c("{", "<-", "B", "C", "D")))

message(" ** findGlobals(..., trace = TRUE):")

expr <- exprs$A
globals_i <- findGlobals(expr, trace = TRUE)
print(globals_i)
stopifnot(all(globals_i %in% c("{", "<-", "b", "c", "d", "+", "a", "e")))

message(" ** findGlobals(a <- pkg::a):")
expr <- exprs$B
globals_i <- findGlobals(expr)
print(globals_i)
stopifnot(all(globals_i %in% c("<-", "::")))

message(" ** findGlobals(a[1] <- 0) etc.:")

globals_i <- findGlobals(a[1] <- 0, substitute = TRUE)
print(globals_i)
false_globals <- "["
stopifnot(all(setdiff(globals_i, false_globals) %in% c("<-", "a", "[<-")))

globals_i <- findGlobals({ a[1] = 0 }, substitute = TRUE)
print(globals_i)
false_globals <- "["
stopifnot(all(setdiff(globals_i, false_globals) %in% c("{", "=", "a", "[<-")))

globals_i <- findGlobals(a[b <- 1] <- 0, substitute = TRUE)
print(globals_i)
false_globals <- "["
stopifnot(all(setdiff(globals_i, false_globals) %in% c("<-", "a", "[<-")))

globals_i <- findGlobals(a[b = 1] <- 0, substitute = TRUE)
print(globals_i)
false_globals <- "["
stopifnot(all(setdiff(globals_i, false_globals) %in% c("<-", "a", "[<-")))

globals_i <- findGlobals({ a[b <- 1] = 0 }, substitute = TRUE)
print(globals_i)
false_globals <- "["
stopifnot(all(setdiff(globals_i, false_globals) %in% c("{", "=", "a", "<-", "[<-")))

globals_i <- findGlobals(a$b <- 0, substitute = TRUE)
print(globals_i)
false_globals <- "$"
stopifnot(all(setdiff(globals_i, false_globals) %in% c("<-", "a", "$<-")))

globals_i <- findGlobals({ a$b = 0 }, substitute = TRUE)
print(globals_i)
false_globals <- "$"
stopifnot(all(setdiff(globals_i, false_globals) %in% c("{", "=", "a", "$<-")))

globals_i <- findGlobals(names(a) <- "A", substitute = TRUE)
print(globals_i)
stopifnot(all(globals_i %in% c("<-", "a", "names", "names<-")))

globals_i <- findGlobals({ names(a) = "A" }, substitute = TRUE)
print(globals_i)
stopifnot(all(globals_i %in% c("{", "=", "a", "names", "names<-")))

## In order to handle the following case, we have to accept a few
## false positives (`[`, `[[`, `$`, `[<-`, `[[<-`)
globals_i <- findGlobals(names(a)[1] <- "A", substitute = TRUE)
print(globals_i)
false_globals <- c("[", "[<-")
stopifnot(all(setdiff(globals_i, false_globals) %in% c("<-", "a", "names", "names<-")))

globals_i <- findGlobals({ names(a)[1] = "A" }, substitute = TRUE)
print(globals_i)
false_globals <- c("[", "[<-")
stopifnot(all(setdiff(globals_i, false_globals) %in% c("{", "=", "a", "names", "names<-")))

message("*** findGlobals() ... DONE")

source("incl/end.R")
