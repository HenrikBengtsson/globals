library("globals")

message("*** utils ...")

as_function <- globals:::as_function
is_base_pkg <- globals:::is_base_pkg
is.base <- globals:::is.base
is_internal <- globals:::is_internal
where <- globals:::where
mdebug <- globals:::mdebug
envname <- globals:::envname

## WORKAROUND: Make sure tests also work with 'covr' package
if ("covr" %in% loadedNamespaces()) {
  globalenv <- function() parent.frame()
  baseenv <- function() environment(base::sample)
}

message("- envname() ...")

name <- envname(NULL)
print(name)
stopifnot(is.character(name), length(name) == 1L, is.na(name))

env <- new.env()
print(env)
name <- utils::capture.output(print(env))
stopifnot(is.character(name), length(name) == 1L)
name <- envname(env)
print(name)
stopifnot(is.character(name), length(name) == 1L, !is.na(name),
          class(env) == "environment")

env <- structure(new.env(), class = "foo")
print.foo <- function(x, ...) { str(as.list(letters[1:3])); invisible(x) }
print(env)
name <- utils::capture.output(print(env))
stopifnot(is.character(name), length(name) > 1L)
name <- envname(env)
print(name)
stopifnot(is.character(name), length(name) == 1L, !is.na(name),
          class(env) == "foo")

message("- envname() ... DONE")


message("* hpaste() ...")

printf <- function(...) cat(sprintf(...))
hpaste <- globals:::hpaste

# Some vectors
x <- 1:6
y <- 10:1
z <- LETTERS[x]

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Abbreviation of output vector
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
printf("x = %s.\n", hpaste(x))
## x = 1, 2, 3, ..., 6.

printf("x = %s.\n", hpaste(x, max_head = 2))
## x = 1, 2, ..., 6.

printf("x = %s.\n", hpaste(x), max_head = 3) # Default
## x = 1, 2, 3, ..., 6.

# It will never output 1, 2, 3, 4, ..., 6
printf("x = %s.\n", hpaste(x, max_head = 4))
## x = 1, 2, 3, 4, 5 and 6.

# Showing the tail
printf("x = %s.\n", hpaste(x, max_head = 1, max_tail = 2))
## x = 1, ..., 5, 6.

# Turning off abbreviation
printf("y = %s.\n", hpaste(y, max_head = Inf))
## y = 10, 9, 8, 7, 6, 5, 4, 3, 2, 1

## ...or simply
printf("y = %s.\n", paste(y, collapse = ", "))
## y = 10, 9, 8, 7, 6, 5, 4, 3, 2, 1

# Change last separator
printf("x = %s.\n", hpaste(x, last_collapse = " and "))
## x = 1, 2, 3, 4, 5 and 6.

# No collapse
stopifnot(all(hpaste(x, collapse = NULL) == x))

# Empty input
stopifnot(identical(hpaste(character(0)), character(0)))

message("* hpaste() ... DONE")


message("* as_function() ...")
fcn <- as_function({ 1 })
print(fcn())
stopifnot(fcn() == 1)


message("* is_base_pkg() ...")
base_pkgs <- c("base")
for (pkg in base_pkgs) {
  stopifnot(is_base_pkg(pkg))
}
stopifnot(!is_base_pkg("globals"))


message("* is.base() & is_internal() ...")
stopifnot(is.base(base::library))
stopifnot(!is.base(globals::globalsOf))
stopifnot(!is.base(NULL))
stopifnot(is_internal(print.default))
stopifnot(!is_internal(globals::globalsOf))
stopifnot(!is_internal(NULL))




message("* where() ...")

env <- where("sample", where = 1L)
str(env)

env <- where("sample", frame = 1L)
str(env)

message("- where('sample') ...")
env <- where("sample", mode = "function")
print(env)
if (!"covr" %in% loadedNamespaces()) {
  stopifnot(identical(env, baseenv()))
}
obj <- get("sample", mode = "function", envir = env, inherits = FALSE)
stopifnot(identical(obj, base::sample))


message("- where('sample', mode = 'integer') ...")
env <- where("sample", mode = "integer")
print(env)
stopifnot(is.null(env))


message("- where('sample2') ...")
sample2 <- base::sample
env <- where("sample2", mode = "function")
print(env)
stopifnot(identical(env, environment()))
obj <- get("sample2", mode = "function", envir = env, inherits = FALSE)
stopifnot(identical(obj, sample2))


message("- where() - local objects of functions ...")
aa <- 1

foo <- function() {
  bb <- 2 #nolint
  list(aa = where("aa"), bb = where("bb"), cc = where("cc"),
       envir = environment())
}

envs <- foo()
str(envs)
stopifnot(identical(envs$aa, globalenv()))
stopifnot(identical(envs$bb, envs$envir))
stopifnot(is.null(envs$cc))

message("- where() - missing ...")
env <- where("non-existing-object", inherits = FALSE)
stopifnot(is.null(env))

rm(list = c("aa", "envs", "foo", "env", "obj", "where"))

message("* where() ... DONE")

message("- mdebug() ...")

mdebug("Message A")
oopts <- options(globals.debug = TRUE)
mdebug("Message B")
options(oopts)

message("* mdebug() ... DONE")

message("*** utils ... DONE")
