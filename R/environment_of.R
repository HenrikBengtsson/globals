# A safe version of base::environment() that returns emptyenv()
# if NULL is passed, instead of the calling environment.
# Related to https://github.com/HenrikBengtsson/globals/issues/79
environment_of <- function(obj, default = getOption("globals.environment_of.default", emptyenv())) {
  if (is.null(obj)) return(default)
  e <- environment(obj)
  if (is.null(e)) return(default)
  e
}
