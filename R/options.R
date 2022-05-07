setOption <- function(name, value) {
  oldValue <- getOption(name)
  args <- list(value)
  names(args) <- name
  do.call(options, args = args)
  invisible(oldValue)
}


# Set an R option from an environment variable
update_package_option <- function(name, mode = "character", default = NULL, split = NULL, trim = TRUE, disallow = c("NA"), force = FALSE, debug = FALSE) {
  ## Nothing to do?
  value <- getOption(name, NULL)
  if (!force && !is.null(value)) return(getOption(name, default = default))

  ## name="pkg.foo.bar" => env="R_PKG_FOO_BAR"
  env <- gsub(".", "_", toupper(name), fixed = TRUE)
  env <- paste("R_", env, sep = "")

  env_value <- value <- Sys.getenv(env, unset = NA_character_)
  ## Nothing to do?
  if (is.na(value)) {  
    if (debug) mdebugf("Environment variable %s not set", sQuote(env))
    if (!is.null(default)) setOption(name, default)
    return(getOption(name, default = default))
  }
  
  if (debug) mdebugf("%s=%s", env, sQuote(value))

  ## Trim?
  if (trim) value <- trim(value)

  ## Nothing to do?
  if (!nzchar(value)) {
    if (!is.null(default)) setOption(name, default)
    return(getOption(name, default = default))
  }

  ## Split?
  if (!is.null(split)) {
    value <- strsplit(value, split = split, fixed = TRUE)
    value <- unlist(value, use.names = FALSE)
    if (trim) value <- trim(value)
  }

  ## Coerce?
  mode0 <- storage.mode(value)
  if (mode0 != mode) {
    suppressWarnings({
      storage.mode(value) <- mode
    })
    if (debug) {
      mdebugf("Coercing from %s to %s: %s", mode0, mode, commaq(value))
    }
  }

  if (length(disallow) > 0) {
    if ("NA" %in% disallow) {
      if (any(is.na(value))) {
        stopf("Coercing environment variable %s=%s to %s would result in missing values for option %s: %s", sQuote(env), sQuote(env_value), sQuote(mode), sQuote(name), commaq(value))
      }
    }
    if (is.numeric(value)) {
      if ("non-positive" %in% disallow) {
        if (any(value <= 0, na.rm = TRUE)) {
          stopf("Environment variable %s=%s specifies a non-positive value for option %s: %s", sQuote(env), sQuote(env_value), sQuote(name), commaq(value))
        }
      }
      if ("negative" %in% disallow) {
        if (any(value < 0, na.rm = TRUE)) {
          stopf("Environment variable %s=%s specifies a negative value for option %s: %s", sQuote(env), sQuote(env_value), sQuote(name), commaq(value))
        }
      }
    }
  }
  
  if (debug) {
    mdebugf("=> options(%s = %s) [n=%d, mode=%s]",
            dQuote(name), commaq(value),
            length(value), storage.mode(value))
  }

  setOption(name, value)
  
  getOption(name, default = default)
}


## Set package options based on environment variables
update_package_options <- function(debug = FALSE) {
  update_package_option("globals.globalsOf.locals", mode = "logical", debug = debug)
  
  update_package_option("globals.selfassign", mode = "logical", debug = debug)

  update_package_option("globals.walkAST.onUnknownType", debug = debug)
  
  update_package_option("globals.environment_of.default", debug = debug)
  value <- getOption("globals.environment_of.default")
  if (!is.null(value)) {
    fcn <- get(value, mode = "function")
    options(globals.environment_of.default = fcn())
  }
}
