library("globals")

message("*** walkAST() ...")

exprs <- list(
  null   = substitute(NULL),
  atomic = substitute(1),
  atomic = substitute("a"),
  atomic = substitute(TRUE),
  assign = substitute(a <- 1),
  assign = substitute(1 -> a),
  assign = substitute(a <- b + 1),
  assign = substitute(x <- rnorm(20, mu=0)),
  fcn    = substitute(function(a=1, b=2) sum(c(a, b))),
  fcn    = substitute(function(a=1, b) sum(c(a, b))),
  fcn    = substitute(function(a=1, b=2, ...) sum(c(a, b, ...))),
  ok     = substitute(function(...) sum(x, ...)),
  warn   = substitute(sum(x, ...))
)

disp <- function(expr) {
  cat("Expression:\n")
  print(expr)
  cat("str():\n")
  str(expr)
  cat(sprintf("typeof: %s\n", typeof(expr)))
  cat("as.list():\n")
  str(as.list(expr))
  expr
} ## disp()

for (kk in seq_along(exprs)) {
  name <- names(exprs)[kk]
  message(sprintf("- walkAST(<expression #%d (%s)>) ...", kk, sQuote(name)))
  expr <- exprs[[name]]
  print(expr)
  str(as.list(expr))

  ## Assert identity (default behavior)
  exprI <- walkAST(expr)
  str(as.list(exprI))
  res <- all.equal(exprI, expr)
  print(res)
  if (!identical(exprI, expr)) saveRDS(list(expr=expr, exprI=exprI), file="/tmp/foo.rds")
  stopifnot(length(exprI) == length(expr), identical(exprI, expr))

  ## Display the AST tree
  walkAST(expr, atomic=disp, name=disp, call=disp, pairlist=disp)

  message(sprintf("- walkAST(<expression #%d (%s)>) ... DONE", kk, sQuote(name)))
} ## for (name ...)


message("*** walkAST() - substitute=TRUE ...")

expr <- walkAST(a <- 1, substitute=TRUE)
print(expr)

message("*** walkAST() - substitute=TRUE ... DONE")


message("*** walkAST() - exceptions ...")

res <- tryCatch({
  expr <- walkAST(list())
}, error = identity)
print(res)
stopifnot(inherits(res, "simpleError"))

message("*** walkAST() - exceptions ... DONE")

message("*** walkAST() ... DONE")
