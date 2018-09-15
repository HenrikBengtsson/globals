#' @importFrom utils .S3methods
packagesOfS3Methods <- function(generic, base = FALSE) {
  envir <- parent.frame()
  
  s3 <- .S3methods(generic, envir = envir)
  info <- attr(s3, "info")
  namespace <- as.character(info$from)

  known <- info$visible
  namespaces <- unique(namespace[known])

  unknown <- which(!known)
  if (length(unknown) == 0) return(namespaces)
  
  mthds <- rownames(info)[unknown]
  start <- nchar(generic) + 2L
  classes <- substr(mthds, start = start, stop = nchar(mthds))
  
  ns <- lapply(classes, FUN = function(class) {
    environment(getS3method(generic, class = class, envir = envir))
  })
  uns <- unique(ns)
  
  namespaces_unknown <- vapply(uns, FUN = function(ns) {
    if (isBaseNamespace(ns)) return("base")
    .getNamespaceInfo(ns, "spec")["name"]
  }, FUN.VALUE = NA_character_, USE.NAMES = FALSE)
  
  unique(c(namespaces, namespaces_unknown))
}
