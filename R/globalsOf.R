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
#' @return A \link{Globals} object.
#'
#' @details
#' There currently three methods for identifying global objects.
#'
#' The \code{"ordered"} search method identifies globals such that
#' a global variable preceding a local variable with the same name
#' is not dropped (which the \code{"conservative"} method would).
#'
#' The \code{"conservative"} search method tries to keep the number
#' of false positive to a minimum, i.e. the identified objects are
#' most likely true global objects.  At the same time, there is
#' a risk that some true globals are not identified (see example).
#' This search method returns the exact same result as the
#' \code{\link[codetools]{findGlobals}()} function of the
#' \pkg{codetools} package.
#'
#' The \code{"liberal"} search method tries to keep the
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
                      tweak = NULL, substitute = FALSE, mustExist = TRUE,
                      unlist = TRUE, recursive = TRUE, skip = NULL) {
  method <- match.arg(method)

  if (substitute) expr <- substitute(expr)
  stopifnot(is.null(skip) || is.list(skip))
  
  mdebug("globalsOf(..., method = '%s', mustExist = %s, unlist = %s, recursive = %s) ...", method, mustExist, unlist, recursive) #nolint

  ## 1. Identify global variables (static code inspection)
  names <- findGlobals(expr, envir = envir, ..., method = method,
                       tweak = tweak, substitute = FALSE, unlist = unlist)
  mdebug(" - preliminary globals (by name): [%d] %s",
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

  mdebug(" - preliminary globals (by value): [%d] %s",
         length(globals), hpaste(sQuote(names(globals))))

  ## 3. Among globals that are closures (functions) and that exist outside
  ##    of namespaces ("packages"), check for additional globals?
  if (recursive) {
    mdebug(" - recursive scan of preliminary globals ...")

    ## Don't enter functions in namespaces / packages
    where <- attr(globals, "where")
    stopifnot(length(where) == length(globals))
    where <- sapply(where, FUN = envname)
    globals_t <- globals[!(where %in% loadedNamespaces())]

    mdebug(" - subset of globals to be scanned (not in loaded namespaces): [%d] %s", length(globals_t), hpaste(sQuote(names(globals_t)))) #nolint

    ## Enter only functions
    ## NOTE: This excludes functions "not found", but also primitives
    ##       not dropped above.
    globals_t <- globals_t[sapply(globals_t, FUN = typeof) == "closure"]

    if (length(globals_t) > 0) {
      mdebug(" - subset of globals to be scanned: [%d] %s",
             length(globals_t), hpaste(sQuote(names(globals_t))))
      names_t <- names(globals_t)

      ## Avoid recursive scanning of already scanned ("known") globals
      skip_t <- c(skip, globals_t)
      
      for (gg in seq_along(globals_t)) {
        mdebug("   + scanning global #%d (%s) ...", gg, sQuote(names_t[[gg]]))
        fcn <- globals_t[[gg]]

        ## Is function 'fcn' among the already identified globals?
        already_scanned <- any(sapply(skip, FUN = identical, fcn))
        if (already_scanned) next;

        env <- environment(fcn) ## was 'env <- envir' in globals 0.8.0.

        globals_gg <- globalsOf(fcn, envir = env, ..., method = method,
                                tweak = tweak, substitute = FALSE,
                                mustExist = mustExist, unlist = unlist,
                                recursive = recursive,
                                skip = skip_t)
        if (length(globals_gg) > 0) {
          globals <- c(globals, globals_gg)

          skip_gg <- globals_gg[sapply(globals_gg, FUN = typeof) == "closure"]
          skip_t <- c(skip_t, skip_gg)
        }
      }
      globals <- unique(globals)
      mdebug(" - updated set of globals found: [%d] %s",
             length(globals), hpaste(sQuote(names(globals))))
    } else {
      mdebug(" - subset of globals to be scanned: [0]")
    }

    mdebug(" - recursive scan of preliminary globals ... DONE")
  }

  mdebug(" - globals found: [%d] %s",
         length(globals), hpaste(sQuote(names(globals))))

  mdebug("globalsOf(..., method = '%s', mustExist = %s, unlist = %s, recursive = %s) ... DONE", method, mustExist, unlist, recursive) #nolint

  globals
} ## globalsOf()




#' Locates and retrieves a set of global variables by their names
#'
#' @param names A character vector of global variable names.
#' @param envir The environment from where to search for globals.
#' @param mustExist If TRUE, an error is thrown if the object of the
#'        identified global cannot be located.  Otherwise, the global
#'        is not returned.
#' @param ... Not used.
#'
#' @return A \link{Globals} object.
#'
#' @export
globalsByName <- function(names, envir = parent.frame(), mustExist = TRUE,
                          ...) {
  names <- as.character(names)

  mdebug("globalsByName(<%d names>, mustExist = %s) ...",
         length(names), mustExist)
  mdebug("- search from environment: %s", sQuote(envname(envir)))

  ## Locate and retrieve the specified globals
  idxs <- which(names == "...")
  needs_dotdotdot <- (length(idxs) > 0)
  if (needs_dotdotdot) names <- names[-idxs]
  mdebug("- dotdotdot: %s", needs_dotdotdot)

  globals <- structure(list(), class = c("Globals", "list"))
  where <- list()
  for (kk in seq_along(names)) {
    name <- names[kk]
    mdebug("- locating #%d (%s)", kk, sQuote(name))
    env <- where(name, envir = envir, inherits = TRUE)
    mdebug("  + found in environment: %s", sQuote(envname(env)))
    if (!is.null(env)) {
      where[[name]] <- env
      value <- get(name, envir = env, inherits = FALSE)
      if (is.null(value)) {
        globals[name] <- list(NULL)
      } else {
        globals[[name]] <- value
      }
    } else {
      globals[name] <- list(NULL)
      where[name] <- list(NULL)
      if (mustExist) {
        stop(sprintf("Failed to locate global object in the relevant environments: %s", sQuote(name))) #nolint
      }
    }
  }

  if (needs_dotdotdot) {
    if (exists("...", envir = envir, inherits = TRUE)) {
      where[["..."]] <- where("...", envir = envir, inherits = TRUE)
      ddd <- evalq(list(...), envir = envir, enclos = envir)
    } else {
      where["..."] <- list(NULL)
      ddd <- NA
    }
    class(ddd) <- c("DotDotDotList", class(ddd))
    globals[["..."]] <- ddd
  }

  stopifnot(
    is.list(where),
    length(where) == length(globals),
    all(names(where) == names(globals))
  )

  attr(globals, "where") <- where

  mdebug("globalsByName(<%d names>, mustExist = %s) ... DONE",
         length(names), mustExist)

  globals
} ## globalsByName()
