## Emulates R internal findVar1mode() function
## https://svn.r-project.org/R/trunk/src/main/envir.c
where <- function(x, where = -1,
                  envir = if (missing(frame)) {
                            if (where < 0)
                              parent.frame(-where)
                            else as.environment(where)
                          } else sys.frame(frame),
                  frame, mode = "any", inherits = TRUE) {
  ## Validate arguments
  stopifnot(is.environment(envir))
  stopifnot(is.character(mode), length(mode) == 1L)
  inherits <- as.logical(inherits)
  stopifnot(inherits %in% c(FALSE, TRUE))

  mdebug("where(%s, where = %d, envir = %s, mode = %s, inherits = %s) ...",
         sQuote(x), where, sQuote(envname(envir)), sQuote(mode), inherits)

  ## Search
  env <- envir
  while (!identical(env, emptyenv())) {
    mdebug("- searching %s: %s", sQuote(envname(env)),
           hpaste(sQuote(ls(envir = env, all.names = TRUE))))
    if (exists(x, envir = env, mode = mode, inherits = FALSE)) {
      mdebug("  + found in location: %s", sQuote(envname(env)))
      mdebug("where(%s, where = %d, envir = %s, mode = %s, inherits = %s) ... DONE", sQuote(x), where, sQuote(envname(envir)), sQuote(mode), inherits) #nolint
      return(env)
    }

    if (!inherits) {
      mdebug("  + failed to locate: NULL")
      mdebug("where(%s, where = %d, envir = %s, mode = %s, inherits = %s) ... DONE", sQuote(x), where, sQuote(envname(envir)), sQuote(mode), inherits) #nolint
      return(NULL)
    }

    env <- parent.env(env)
  }

  mdebug("- failed to locate: NULL")
  mdebug("where(%s, where = %d, envir = %s, mode = %s, inherits = %s) ... DONE",
         sQuote(x), where, sQuote(envname(envir)), sQuote(mode), inherits)

  NULL
}
