## Define some globals
a <- 0
b <- 2
c <- 3
d <- NULL
e <- function() TRUE


## Expression with globals
exprs <- list(
   A = quote({
         x <- b
         b <- 1
         y <- c
         z <- d
         a <- a + 1
         e <- e()
       }),
   B = substitute(a <- pkg::a, env=environment()),
   C = quote({
         foo(list(a = 1))
       }),
   D = quote({
         x <- sample(10)
         y <- sum(x)
         x2 <- sample2(10)
         y2 <- sum2(x)
         s <- sessionInfo()
         ns <- isNamespaceLoaded("foobar")
       })
)
