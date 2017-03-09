## Emulates R internal findVar1mode() function
## https://svn.r-project.org/R/trunk/src/main/envir.c
where <- function(x, where=-1, envir=if (missing(frame)) { if (where < 0) parent.frame(-where) else as.environment(where) } else sys.frame(frame), frame, mode="any", inherits=TRUE) {
  tt <- 1
  ## Validate arguments
  stopifnot(is.environment(envir))
  stopifnot(is.character(mode), length(mode) == 1L)
  inherits <- as.logical(inherits)
  stopifnot(inherits %in% c(FALSE, TRUE))

  mdebug("where(%s, where = %d, envir = %s, mode = %s, inherits = %s) ...", sQuote(x), where, sQuote(envname(envir)), sQuote(mode), inherits)
  
  ## Search
  while (!identical(envir, emptyenv())) {
    mdebug("- searching location: %s", sQuote(envname(envir)))
    mdebug("- content of %s: %s", sQuote(envname(envir)), hpaste(sQuote(ls(envir = envir, all.names = TRUE))))
    if (exists(x, envir=envir, mode=mode, inherits=FALSE)) {
      mdebug("  + found in location: %s", sQuote(envname(envir)))
      mdebug("where(%s, where = %d, envir = %s, mode = %s, inherits = %s) ... DONE", sQuote(x), where, sQuote(envname(envir)), sQuote(mode), inherits)
      return(envir)
    }
    
    if (!inherits) {
      mdebug("  + failed to located: NULL")
      mdebug("where(%s, where = %d, envir = %s, mode = %s, inherits = %s) ... DONE", sQuote(x), where, sQuote(envname(envir)), sQuote(mode), inherits)
      return(NULL)
    }
    
    envir <- parent.env(envir)
  }

  mdebug("- failed to located: NULL")
  mdebug("where(%s, where = %d, envir = %s, mode = %s, inherits = %s) ... DONE", sQuote(x), where, sQuote(envname(envir)), sQuote(mode), inherits)
  
  NULL
}
