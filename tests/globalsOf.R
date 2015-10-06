library("globals")

b <- 2
c <- 3
d <- NULL
expr <- substitute({ x <- b; b <- 1; y <- c; z <- d }, env=list())

message("*** findGlobals():")
globalsC <- findGlobals(expr, method="conservative")
print(globalsC)
stopifnot(all(globalsC %in% c("{", "<-", "c", "d")))

globalsL <- findGlobals(expr, method="liberal")
print(globalsL)
stopifnot(all(globalsL %in% c("{", "<-", "b", "c", "d")))


message("*** globalsOf():")
globalsC <- globalsOf(expr, method="conservative")
str(globalsC)
stopifnot(all(names(globalsC) %in% c("{", "<-", "c", "d")))
globalsC <- cleanup(globalsC)
str(globalsC)
stopifnot(all(names(globalsC) %in% c("c", "d")))

globalsL <- globalsOf(expr, method="liberal")
str(globalsL)
stopifnot(all(names(globalsL) %in% c("{", "<-", "b", "c", "d")))
globalsL <- cleanup(globalsL)
str(globalsL)
stopifnot(all(names(globalsL) %in% c("b", "c", "d")))


message("*** Subsetting of Globals:")
globalsL <- globalsOf(expr, method="liberal")
globalsS <- globalsL[-1]
stopifnot(length(globalsS) == length(globalsL) - 1L)
stopifnot(identical(class(globalsS), class(globalsL)))


message("*** cleanup() & packagesOf():")
globals <- globalsOf(expr, method="conservative")
str(globals)
stopifnot(all(names(globals) %in% c("{", "<-", "c", "d")))

globals <- as.Globals(globals)
str(globals)
stopifnot(all(names(globals) %in% c("{", "<-", "c", "d")))

globals <- as.Globals(unclass(globals))
str(globals)
stopifnot(all(names(globals) %in% c("{", "<-", "c", "d")))

pkgs <- packagesOf(globals)
print(pkgs)
stopifnot(length(pkgs) == 0L)

globals <- cleanup(globals)
str(globals)
stopifnot(all(names(globals) %in% c("c", "d")))

pkgs <- packagesOf(globals)
print(pkgs)
stopifnot(length(pkgs) == 0L)
