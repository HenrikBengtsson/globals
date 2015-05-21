b <- 2
expr <- substitute({ a <- b; b <- 1 })

## Will _not_ identify 'b' (because it's also a local)
globalsC <- getGlobals(expr, method="conservative")
print(globalsC)

## Will identify 'b'
globalsL <- getGlobals(expr, method="liberal")
print(globalsL)
