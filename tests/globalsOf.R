library("globals")

b <- 2
expr <- substitute({ a <- b; b <- 1 }, env=list())

message("*** findGlobals():")
globalsC <- findGlobals(expr, method="conservative")
print(globalsC)
globalsL <- findGlobals(expr, method="liberal")
print(globalsL)

message("*** Subsetting:")
globalsS <- globalsL[-1]
stopifnot(length(globalsS) == length(globalsL) - 1L)
stopifnot(identical(class(globalsS), class(globalsL)))

message("*** globalsOf():")
globalsC <- globalsOf(expr, method="conservative")
print(globalsC)
globalsC <- cleanup(globalsC)
print(globalsC)
stopifnot(length(globalsC) == 0L)
globalsL <- globalsOf(expr, method="liberal")
print(globalsL)
globalsL <- cleanup(globalsL)
print(globalsL)
stopifnot(length(globalsL) == 1L)
stopifnot(names(globalsL) == "b")

message("*** cleanup() & packagesOf():")
globals <- globalsOf(expr, method="conservative")
print(globals)

globals <- as.Globals(globals)
print(globals)

globals <- as.Globals(unclass(globals))
print(globals)

pkgs <- packagesOf(globals)
print(pkgs)

globals <- cleanup(globals)
print(globals)
stopifnot(length(globals) == 0L)

pkgs <- packagesOf(globals)
print(pkgs)

