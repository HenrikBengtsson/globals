library("globals")

asFunction <- globals:::asFunction
findBasePkgs <- globals:::findBasePkgs
isBasePkgs <- globals:::isBasePkgs
is.base <- globals:::is.base
is.internal <- globals:::is.internal

fcn <- asFunction({ 1 })
print(fcn())
stopifnot(fcn() == 1)


## Base R packages
basePkgs <- findBasePkgs()
print(basePkgs)
stopifnot(length(basePkgs) > 1L)
for (pkg in basePkgs) {
  stopifnot(isBasePkgs(pkg))
}
stopifnot(!isBasePkgs("globals"))

stopifnot(is.base(base::library))
stopifnot(!is.base(globals::globalsOf))
stopifnot(is.internal(print.default))
stopifnot(!is.internal(globals::globalsOf))



