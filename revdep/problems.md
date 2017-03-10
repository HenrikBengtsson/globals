# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.3.3 (2017-03-06) |
|system   |x86_64, linux-gnu            |
|ui       |X11                          |
|language |en                           |
|collate  |en_US.UTF-8                  |
|tz       |America/Los_Angeles          |
|date     |2017-03-09                   |

## Packages

|package |*  |version |date       |source        |
|:-------|:--|:-------|:----------|:-------------|
|globals |   |0.8.0   |2017-01-17 |cran (@0.8.0) |

# Check results

2 packages with problems

|package   |version | errors| warnings| notes|
|:---------|:-------|------:|--------:|-----:|
|PureCN    |1.2.3   |      2|        2|     1|
|Repitools |1.20.0  |      2|        1|     2|

## PureCN (1.2.3)
Maintainer: Markus Riester <markus.riester@novartis.com>

2 errors | 2 warnings | 1 note 

```
checking examples ... ERROR
Running examples in ‘PureCN-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: callLOH
> ### Title: Get regions of LOH
> ### Aliases: callLOH
> 
> ### ** Examples
> 
> data(purecn.example.output)
> head(callLOH(purecn.example.output))
Error in c(x, values) : 
  could not find symbol "recursive" in environment of the generic function
Calls: head -> callLOH -> .getArmLocations
Execution halted

checking tests ... ERROR
  Running ‘runTests.R’ [35s/35s]
Running the tests in ‘tests/runTests.R’ failed.
Last 13 lines of output:
       test_predictSomatic 
  
     test_runAbsoluteCN.R 
       test_runAbsoluteCN 
  
     test_setMappingBiasVcf.R 
       test_setMappingBiasVcf 
  
     test_setPriorVcf.R 
       test_setPriorVcf 
  
  
  Error in BiocGenerics:::testPackage("PureCN") : 
    unit tests failed for package PureCN
  Execution halted

checking whether package ‘PureCN’ can be installed ... WARNING
Found the following significant warnings:
  Warning: namespace ‘Matrix’ is not available and has been replaced
See ‘/home/hb/repositories/globals/revdep/checks/PureCN.Rcheck/00install.out’ for details.

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Loading required package: IRanges
Loading required package: GenomicRanges
Loading required package: SummarizedExperiment
Loading required package: Biobase
Welcome to Bioconductor

    Vignettes contain introductory material; view with
... 8 lines ...

Attaching package: 'VariantAnnotation'

The following object is masked from 'package:base':

    tabulate

Quitting from lines 382-391 (PureCN.Rnw) 
Error: processing vignette 'PureCN.Rnw' failed with diagnostics:
could not find symbol "recursive" in environment of the generic function
Execution halted

checking R code for possible problems ... NOTE
Found the following calls to data() loading into the global environment:
File ‘PureCN/R/bootstrapResults.R’:
  data(purecn.example.output)
File ‘PureCN/R/callAlterations.R’:
  data(purecn.example.output)
  data(purecn.example.output)
File ‘PureCN/R/callLOH.R’:
  data(purecn.example.output)
File ‘PureCN/R/createCurationFile.R’:
  data(purecn.example.output)
File ‘PureCN/R/curateResults.R’:
  data(purecn.example.output)
  data(purecn.example.output)
File ‘PureCN/R/plotAbs.R’:
  data(purecn.example.output)
File ‘PureCN/R/predictSomatic.R’:
  data(purecn.example.output)
File ‘PureCN/R/readCurationFile.R’:
  data(purecn.example.output)
See section ‘Good practice’ in ‘?data’.
```

## Repitools (1.20.0)
Maintainer: Mark Robinson <mark.robinson@imls.uzh.ch>

2 errors | 1 warning  | 2 notes

```
checking examples ... ERROR
Running examples in ‘Repitools-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: BayMethList
> ### Title: Class '"BayMethList"'
> ### Aliases: BayMethList BayMethList-class
> ###   BayMethList,GRanges,matrix,matrix,numeric-method
> ###   [,BayMethList,ANY,missing,ANY-method length length,BayMethList-method
... 50 lines ...

Attaching package: ‘rtracklayer’

The following object is masked from ‘package:Repitools’:

    blocks

Error in .Primitive("c")(<S4 object of class "GRanges">) : 
  could not find symbol "recursive" in environment of the generic function
Calls: genomeBlocks ... genomeBlocks -> .local -> genomeBlocks -> genomeBlocks -> .local
Execution halted

checking tests ... ERROR
  Running ‘tests.R’ [17s/17s]
Running the tests in ‘tests/tests.R’ failed.
Last 13 lines of output:
  > correctLookupTable[4, c(45, 46)] <- 1
  > correctLookupTable[4, c(55, 56)] <- 4
  > correctLookupTable[6, c(49, 50)] <- 6
  > correctLookupTable[6, c(51, 52)] <- 7
  > 
  > if(!all(lookupTable == correctLookupTable, na.rm = TRUE))
  +     stop("Error in makeWindowLookupTable function")
  > cat("makeWindowLookupTable tested fine.\n")
  makeWindowLookupTable tested fine.
  > 
  > cpgDensity <- cpgDensityCalc(genes, organism = Hsapiens, window = 500, w.function="linear")
  Error in .Primitive("c")(<S4 object of class "IRanges">, <S4 object of class "IRanges">,  : 
    could not find symbol "recursive" in environment of the generic function
  Calls: cpgDensityCalc ... compress_listData -> do.call -> do.call -> <Anonymous>
  Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...

    clusterApply, clusterApplyLB, clusterCall, clusterEvalQ,
    clusterExport, clusterMap, parApply, parCapply, parLapply,
    parLapplyLB, parRapply, parSapply, parSapplyLB

The following objects are masked from ‘package:stats’:

... 8 lines ...
    match, mget, order, paste, pmax, pmax.int, pmin, pmin.int, rank,
    rbind, rownames, sapply, setdiff, sort, table, tapply, union,
    unique, unsplit, which, which.max, which.min

Counting clusters at cutoff -2

Error: processing vignette 'Repitools_vignette.Rnw' failed with diagnostics:
 chunk 2 (label = findClusters) 
Error in c(query, subject) : 
  could not find symbol "recursive" in environment of the generic function
Execution halted

checking R code for possible problems ... NOTE
Found an obsolete/platform-specific call in the following function:
  ‘maskOut’
Found the platform-specific device:
  ‘windows’
dev.new() is the preferred way to open a new device, in the unlikely
event one is needed.
.cpgBoxplots: no visible global function definition for ‘pdf’
.cpgBoxplots: no visible global function definition for ‘par’
.cpgBoxplots: no visible global function definition for ‘dev.off’
... 291 lines ...
  rainbow read.table rect str t.test text title verbose
Consider adding
  importFrom("grDevices", "dev.off", "pdf", "rainbow")
  importFrom("graphics", "abline", "axis", "barplot", "bxp", "grid",
             "layout", "legend", "lines", "matlines", "matplot", "mtext",
             "par", "persp", "plot", "plot.new", "plot.window", "points",
             "polygon", "rect", "text", "title")
  importFrom("stats", "dbeta", "embed", "filter", "kmeans", "lm",
             "lowess", "p.adjust", "predict", "pt", "qnorm", "t.test")
  importFrom("utils", "read.table", "str")
to your NAMESPACE file.

checking Rd line widths ... NOTE
Rd file 'ChromaBlocks.Rd':
  \usage lines wider than 90 characters:
     ChromaBlocks(rs.ip, rs.input, organism, chrs, ipWidth=100, inputWidth=500, preset=NULL, blockWidth=NULL, minBlocks=NULL, extend=NULL, c ... [TRUNCATED]

Rd file 'GCbiasPlots.Rd':
  \usage lines wider than 90 characters:
                 cex = 0.2, pch.col = "black", line.col = "red", lty = 1, lwd = 2, verbose = TRUE)

Rd file 'absoluteCN.Rd':
... 57 lines ...

Rd file 'regionStats.Rd':
  \usage lines wider than 90 characters:
     regionStats(x, design = NULL, maxFDR=0.05, n.perm=5, window=600, mean.trim=.1, min.probes=10, max.gap=500, two.sides=TRUE, ndf, return. ... [TRUNCATED]
     regionStats(x, design = NULL, maxFDR=0.05, n.perm=5, window=600, mean.trim=.1, min.probes=10, max.gap=500, two.sides=TRUE, ind=NULL, re ... [TRUNCATED]

Rd file 'writeWig.Rd':
  \usage lines wider than 90 characters:
     writeWig(rs, seq.len = NULL, design=NULL, sample=20, drop.zero=TRUE, normalize=TRUE, verbose=TRUE)

These lines will be truncated in the PDF manual.
```

