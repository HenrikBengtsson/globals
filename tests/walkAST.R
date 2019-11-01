source("incl/start.R")

message("*** walkAST() ...")

exprs <- list(
  null        = quote(NULL),
  atomic      = quote(1),
  atomic      = quote("a"),
  atomic      = quote(TRUE),
  assign      = quote(a <- 1),
  assign      = quote(1 -> a),
  assign      = quote(a <- b + 1),
  assign      = quote(x <- rnorm(20, mu = 0)),
  index       = quote(x[1, 1]),
  index       = quote(x[1:2, 1:2]),
  index       = quote(x[, 1:2]),
  index       = quote(x[, 1]),
  fcn         = quote(function(a = 1, b = 2) sum(c(a, b))),
  fcn         = quote(function(a = 1, b) sum(c(a, b))),
  fcn         = quote(function(a = 1, b = 2, ...) sum(c(a, b, ...))),
  fcn         = quote(function(a = NULL) a),
  ok          = quote(function(...) sum(x, ...)),
  warn        = quote(sum(x, ...)),
  null        = quote(NULL),
  builtin     = base::length,
  closure     = function() NULL,
  closure     = function() a,
  closure     = function(x = 0) a * x,
  special     = base::log,
  list        = substitute(FUN(a = A), list(A = list())),
  pairlist    = substitute(FUN(a = A), list(A = pairlist(a = 1))),
  expression  = substitute(FUN(a = A), list(A = expression()))
# environment = new.env()
)
if (requireNamespace("methods")) {
  exprs$s4 <- methods::getClass("MethodDefinition")
}

nullify <- function(e) NULL

disp <- function(expr) {
  cat("Expression:\n")
  print(expr)
  cat("str():\n")
  str(expr)
  cat(sprintf("typeof: %s\n", typeof(expr)))
  if (is.recursive(expr)) {
    cat("as.list():\n")
    str(as.list(expr))
  }  
  expr
} ## disp()

for (kk in seq_along(exprs)) {
  name <- names(exprs)[kk]
  message(sprintf("- walkAST(<expression #%d (%s)>) ...", kk, sQuote(name)))
  expr <- exprs[[kk]]
  disp(expr)

  ## Assert identity (default behavior)
  expr_i <- walkAST(expr)
  disp(expr_i)
  stopifnot(length(expr_i) == length(expr), identical(expr_i, expr))

  ## Display the AST tree
  walkAST(expr, atomic = disp, name = disp, call = disp, pairlist = disp)

  ## Nullify
  expr_n <- walkAST(expr, atomic = nullify, name = nullify,
                    call = nullify, pairlist = nullify)
  disp(expr_n)

  message("*** walkAST() - nullify ... DONE")

  message(sprintf("- walkAST(<expression #%d (%s)>) ... DONE",
                  kk, sQuote(name)))
} ## for (name ...)



message("*** walkAST() - substitute = TRUE ...")

expr <- walkAST(a <- 1, substitute = TRUE)
print(expr)

message("*** walkAST() - substitute = TRUE ... DONE")


message("*** walkAST() - exceptions ...")

f <- function(...) get("...")
expr <- f(NULL)
  
options(globals.walkAST.onUnknownType = "error")
res <- tryCatch({
  walkAST(expr)
}, error = identity)
print(res)
stopifnot(inherits(res, "simpleError"))

options(globals.walkAST.onUnknownType = "warning")
foo <- walkAST(expr)

res <- tryCatch({
  walkAST(expr)
}, warning = identity)
print(res)
stopifnot(inherits(res, "simpleWarning"))

options(globals.walkAST.onUnknownType = "error")

message("*** walkAST() - exceptions ... DONE")

message("*** walkAST() ... DONE")

source("incl/end.R")
