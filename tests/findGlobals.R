library("globals")

b <- 2
expr <- substitute({ a <- b; b <- 1 })

message("*** findGlobals():")
globalsC <- findGlobals(expr, method="conservative")
print(globalsC)

globalsL <- findGlobals(expr, method="liberal")
print(globalsL)


message("*** getGlobals():")
globalsC <- getGlobals(expr, method="conservative")
print(globalsC)
stopifnot(length(globalsC) == 0L)

globalsL <- getGlobals(expr, method="liberal")
print(globalsL)
stopifnot(length(globalsL) == 1L)
stopifnot(names(globalsL) == "b")

