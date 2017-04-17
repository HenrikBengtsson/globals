library("globals")

message("*** walkAST() ...")

exprs <- list(
  null     = substitute(NULL),
  atomic   = substitute(1),
  atomic   = substitute("a"),
  atomic   = substitute(TRUE),
  assign   = substitute(a <- 1),
  assign   = substitute(1 -> a),
  assign   = substitute(a <- b + 1),
  assign   = substitute(x <- rnorm(20, mu = 0)),
  index    = substitute(x[1, 1]),
  index    = substitute(x[1:2, 1:2]),
  index    = substitute(x[, 1:2]),
  index    = substitute(x[, 1]),
  fcn      = substitute(function(a = 1, b = 2) sum(c(a, b))),
  fcn      = substitute(function(a = 1, b) sum(c(a, b))),
  fcn      = substitute(function(a = 1, b = 2, ...) sum(c(a, b, ...))),
  fcn      = substitute(function(a = NULL) a),
  ok       = substitute(function(...) sum(x, ...)),
  warn     = substitute(sum(x, ...)),
  null     = substitute(NULL),
  builtin  = base::length,
  closure  = function() NULL,
  special  = base::log
)

nullify <- function(e) NULL

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
  expr <- exprs[[kk]]
  print(expr)
  str(as.list(expr))

  ## Assert identity (default behavior)
  expr_i <- walkAST(expr)
  str(as.list(expr_i))
  res <- all.equal(expr_i, expr)
  print(res)
  if (!identical(expr_i, expr)) {
    saveRDS(list(expr = expr, expr_i = expr_i), file = "/tmp/foo.rds")
  }
  stopifnot(length(expr_i) == length(expr), identical(expr_i, expr))

  ## Display the AST tree
  walkAST(expr, atomic = disp, name = disp, call = disp, pairlist = disp)

  ## Nullify
  expr_n <- walkAST(expr, atomic = nullify, name = nullify,
                   call = nullify, pairlist = nullify)
  print(expr_n)
  str(as.list(expr_n))


message("*** walkAST() - nullify ... DONE")

  message(sprintf("- walkAST(<expression #%d (%s)>) ... DONE",
                  kk, sQuote(name)))
} ## for (name ...)



message("*** walkAST() - substitute = TRUE ...")

expr <- walkAST(a <- 1, substitute = TRUE)
print(expr)

message("*** walkAST() - substitute = TRUE ... DONE")


message("*** walkAST() - exceptions ...")

res <- tryCatch({
  expr <- walkAST(list())
}, error = identity)
print(res)
stopifnot(inherits(res, "simpleError"))

message("*** walkAST() - exceptions ... DONE")

message("*** walkAST() ... DONE")
