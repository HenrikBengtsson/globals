#' Get all global objects of an expression
#'
#' @param expr An R expression.
#'
#' @param envir The environment from where to search for globals.
#'
#' @param \dots Not used.
#'
#' @param method A character string specifying what type of search algorithm
#'        to use.
#'
#' @param tweak An optional function that takes an expression
#'        and returns a tweaked expression.
#'
#' @param locals Should globals part of any "local" environment of
#'        a function be included or not?
#'
#' @param substitute If TRUE, the expression is \code{substitute()}:ed,
#'        otherwise not.
#'
#' @param mustExist If TRUE, an error is thrown if the object of the
#'        identified global cannot be located.  Otherwise, the global
#'        is not returned.
#'
#' @param unlist If TRUE, a list of unique objects is returned.
#'        If FALSE, a list of \code{length(expr)} sublists.
#'
#' @param recursive If TRUE, globals that are closures (functions) and that
#'        exist outside of namespaces ("packages"), will be recursively
#'        scanned for globals.
#'
#' @param skip (internal) A list of globals not to be searched for
#'        additional globals.  Ignored unless \code{recursive} is TRUE.
#'
#' @return \code{globalsOf()} returns a \link{Globals} object.
#'
#' @details
#' There currently three strategies for identifying global objects.
#'
#' The \code{method = "ordered"} search method identifies globals such that
#' a global variable preceding a local variable with the same name
#' is not dropped (which the \code{"conservative"} method would).
#'
#' The \code{method = "conservative"} search method tries to keep the number
#' of false positive to a minimum, i.e. the identified objects are
#' most likely true global objects.  At the same time, there is
#' a risk that some true globals are not identified (see example).
#' This search method returns the exact same result as the
#' \code{\link[codetools]{findGlobals}()} function of the
#' \pkg{codetools} package.
#'
#' The \code{method = "liberal"} search method tries to keep the
#' true-positive ratio as high as possible, i.e. the true globals
#' are most likely among the identified ones.  At the same time,
#' there is a risk that some false positives are also identified.
#'
#' With \code{recursive = TRUE}, globals part of locally defined
#' functions will also be found, otherwise not.
#'
#' @example incl/globalsOf.R
#'
#' @seealso
#' Internally, the \pkg{\link{codetools}} package is utilized for
#' code inspections.
#'
#' @aliases findGlobals
#' @export
globalsOf <- function(expr, envir = parent.frame(), ...,
                      method = c("ordered", "conservative", "liberal"),
                      tweak = NULL,
                      locals = NA,
                      substitute = FALSE, mustExist = TRUE,
                      unlist = TRUE, recursive = TRUE, skip = NULL) {
  method <- match.arg(method, choices = c("ordered", "conservative", "liberal"))

  if (is.na(locals)) locals <- getOption("globals.globalsOf.locals", TRUE)
  stop_if_not(is.logical(locals), length(locals) == 1L, !is.na(locals))
  
  if (substitute) expr <- substitute(expr)
  stop_if_not(is.null(skip) || is.list(skip))
  
  debug <- mdebug("globalsOf(..., method = '%s', mustExist = %s, unlist = %s, recursive = %s) ...", method, mustExist, unlist, recursive) #nolint

  ## 1. Identify global variables (static code inspection)
  names <- findGlobals(expr, envir = envir, ..., method = method,
                       tweak = tweak, substitute = FALSE, unlist = unlist)
  debug && mdebug(" - preliminary globals (by name): [%d] %s",
                  length(names), hpaste(sQuote(names)))

  ## 2. Locate them (run time)
  globals <- tryCatch({
    globalsByName(names, envir = envir, mustExist = mustExist)
  }, error = function(ex) {
    ## HACK: Tweak error message to also include the expression inspected.
    msg <- conditionMessage(ex)
    msg <- sprintf("Identified global objects via static code inspection (%s). %s", hexpr(expr), msg) #nolint
    ex$message <- msg
    stop(ex)
  })

  debug && mdebug(" - preliminary globals (by value): [%d] %s",
                  length(globals), hpaste(sQuote(names(globals))))

  ## If a function, drop any globals that are part of any of the functions
  ## local environments, e.g. 'a' in f <- local({ a <- 1; function() a })
  if (!locals && is.function(expr) && length(globals) > 0) {
    env <- environment(expr) ## the environment of the function
    eenv <- emptyenv()
    genv <- globalenv()
    where <- attr(globals, "where", exact = TRUE)
    while (length(where) > 0 && !identical(env, eenv) && !identical(env, genv)) {
      ## Any 'where' for the current environment?
      keep <- !vapply(where, FUN.VALUE = FALSE, FUN = identical, env)
      where <- where[keep]
      env <- parent.env(env)
    }
    ## Anything to drop?
    if (length(where) != length(globals)) globals <- globals[names(where)]
  }

  ## 3. Among globals that are closures (functions) and that exist outside
  ##    of namespaces ("packages"), check for additional globals?
  if (recursive) {
    debug && mdebug(" - recursive scan of preliminary globals ...")

    ## Don't enter functions in namespaces / packages
    where <- attr(globals, "where", exact = TRUE)
    stop_if_not(length(where) == length(globals))
    where <- vapply(where, FUN = envname, FUN.VALUE = NA_character_,
                    USE.NAMES = FALSE)
    globals_t <- globals[!(where %in% loadedNamespaces())]

    debug && mdebug(" - subset of globals to be scanned (not in loaded namespaces): [%d] %s", length(globals_t), hpaste(sQuote(names(globals_t)))) #nolint

    ## Enter only functions
    ## NOTE: This excludes functions "not found", but also primitives
    ##       not dropped above.
    globals_t <- globals_t[vapply(globals_t, FUN = typeof, FUN.VALUE = NA_character_, USE.NAMES = FALSE) == "closure"]

    if (length(globals_t) > 0) {
      debug && mdebug(" - subset of globals to be scanned: [%d] %s",
                      length(globals_t), hpaste(sQuote(names(globals_t))))
      names_t <- names(globals_t)

      ## Avoid recursive scanning of already scanned ("known") globals
      skip_t <- c(skip, globals_t)
      
      for (gg in seq_along(globals_t)) {
        debug && mdebug("   + scanning global #%d (%s) ...",
	                gg, sQuote(names_t[[gg]]))
        fcn <- globals_t[[gg]]

        ## Is function 'fcn' among the already identified globals?
        already_scanned <- any(vapply(skip, FUN = identical, fcn, FUN.VALUE = NA, USE.NAMES = FALSE))
        if (already_scanned) next;

        env <- environment(fcn) ## was 'env <- envir' in globals 0.8.0.

        globals_gg <- globalsOf(fcn, envir = env, ..., method = method,
                                tweak = tweak,
                                locals = locals,
                                substitute = FALSE,
                                mustExist = mustExist, unlist = unlist,
                                recursive = recursive,
                                skip = skip_t)
        if (length(globals_gg) > 0) {
          globals <- c(globals, globals_gg)

          skip_gg <- globals_gg[vapply(globals_gg, FUN = typeof, FUN.VALUE = NA_character_, USE.NAMES = FALSE) == "closure"]
          skip_t <- c(skip_t, skip_gg)
        }
      }
      globals <- unique(globals)
      debug && mdebug(" - updated set of globals found: [%d] %s",
                      length(globals), hpaste(sQuote(names(globals))))
    } else {
      debug && mdebug(" - subset of globals to be scanned: [0]")
    }

    debug && mdebug(" - recursive scan of preliminary globals ... DONE")
  }

  debug && mdebug(" - globals found: [%d] %s",
                  length(globals), hpaste(sQuote(names(globals))))

  debug && mdebug("globalsOf(..., method = '%s', mustExist = %s, unlist = %s, recursive = %s) ... DONE", method, mustExist, unlist, recursive) #nolint

  globals
} ## globalsOf()
