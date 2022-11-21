#' @importFrom codetools walkCode
find_globals_liberal <- function(expr, envir, dotdotdot, ..., trace = FALSE) {
  objs <- character()

  enter <- function(type, v, e, w) {
    objs <<- c(objs, v)
  }

  if (is.function(expr)) {
    if (typeof(expr) != "closure") return(character(0L)) ## e.g. `<-`
    fun <- expr
    w <- make_usage_collector(fun, name = "<anonymous>", enterGlobal = enter)
    if (trace) w <- inject_tracer_to_walker(w)
    collect_usage_function(fun, name = "<anonymous>", w, trace = trace)
  } else if (is.call(expr) && is.function(expr[[1]])) {
    ## AD HOC: Fixes https://github.com/HenrikBengtsson/globals/issues/60
    for (e in list(expr[[1]], expr[-1])) {
      globals <- find_globals_liberal(expr = e, envir = envir, dotdotdot = dotdotdot, ..., trace = trace)
      if (length(globals) > 0) objs <- c(objs, globals)
    }
  } else {
    fun <- as_function(expr, envir = envir, ...)
    w <- make_usage_collector(fun, name = "<anonymous>", enterGlobal = enter)
    if (trace) w <- inject_tracer_to_walker(w)
    walkCode(expr, w)
  }

  unique(objs)
}
