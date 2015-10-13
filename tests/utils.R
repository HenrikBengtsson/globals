library("globals")

asFunction <- globals:::asFunction
findBasePkgs <- globals:::findBasePkgs
isBasePkgs <- globals:::isBasePkgs
is.base <- globals:::is.base
is.internal <- globals:::is.internal
where <- globals:::where

## WORKAROUND: Make sure tests also work with 'covr' package
if ("covr" %in% loadedNamespaces()) {
  globalenv <- function() parent.frame()
  baseenv <- function() environment(base::sample)
}


message("* asFunction() ...")
fcn <- asFunction({ 1 })
print(fcn())
stopifnot(fcn() == 1)


message("* findBasePkgs() & isBasePkgs() ...")
basePkgs <- findBasePkgs()
print(basePkgs)
stopifnot(length(basePkgs) > 1L)
for (pkg in basePkgs) {
  stopifnot(isBasePkgs(pkg))
}
stopifnot(!isBasePkgs("globals"))


message("* is.base() & is.internal() ...")
stopifnot(is.base(base::library))
stopifnot(!is.base(globals::globalsOf))
stopifnot(is.internal(print.default))
stopifnot(!is.internal(globals::globalsOf))




message("* where() ...")

message("- where('sample') ...")
env <- where("sample", mode="function")
print(env)
stopifnot(identical(env, baseenv()))
obj <- get("sample", mode="function", envir=env, inherits=FALSE)
stopifnot(identical(obj, base::sample))


message("- where('sample', mode='integer') ...")
env <- where("sample", mode="integer")
print(env)
stopifnot(is.null(env))


message("- where('sample2') ...")
sample2 <- base::sample
env <- where("sample2", mode="function")
print(env)
stopifnot(identical(env, environment()))
obj <- get("sample2", mode="function", envir=env, inherits=FALSE)
stopifnot(identical(obj, sample2))


message("- where() - local objects of functions ...")
aa <- 1

foo <- function() {
  bb <- 2
  list(aa=where("aa"), bb=where("bb"), cc=where("cc"), envir=environment())
}

envs <- foo()
str(envs)
stopifnot(identical(envs$aa, globalenv()))
stopifnot(identical(envs$bb, envs$envir))
stopifnot(is.null(envs$cc))

rm(list=c("aa", "envs", "foo", "env", "obj", "where"))

message("* where() ... DONE")

