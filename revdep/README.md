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

21 packages

|package              |version | errors| warnings| notes|
|:--------------------|:-------|------:|--------:|-----:|
|ACNE                 |0.8.1   |      0|        0|     0|
|aroma.affymetrix     |3.0.0   |      0|        0|     0|
|aroma.cn             |1.6.1   |      0|        0|     0|
|aroma.core           |3.0.0   |      0|        0|     1|
|calmate              |0.12.1  |      0|        0|     0|
|doFuture             |0.3.0   |      0|        0|     0|
|fiery                |0.2.2   |      0|        0|     0|
|future.BatchJobs     |0.13.1  |      0|        0|     0|
|future               |1.3.0   |      0|        0|     0|
|GeneBreak            |1.4.0   |      0|        0|     1|
|googleComputeEngineR |0.1.0   |      0|        0|     0|
|MPAgenomics          |1.1.2   |      0|        0|     2|
|NSA                  |0.0.32  |      0|        0|     6|
|pbmcapply            |1.2.1   |      0|        0|     0|
|PECA                 |1.10.0  |      0|        0|     1|
|PSCBS                |0.62.0  |      0|        0|     0|
|PureCN               |1.2.3   |      2|        2|     1|
|QDNAseq              |1.10.0  |      0|        0|     0|
|Repitools            |1.20.0  |      2|        1|     2|
|R.filesets           |2.11.0  |      0|        0|     0|
|TIN                  |1.6.0   |      0|        0|     2|

## ACNE (0.8.1)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/ACNE/issues

0 errors | 0 warnings | 0 notes

## aroma.affymetrix (3.0.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.affymetrix/issues

0 errors | 0 warnings | 0 notes

## aroma.cn (1.6.1)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.cn/issues

0 errors | 0 warnings | 0 notes

## aroma.core (3.0.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.core/issues

0 errors | 0 warnings | 1 note 

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘sfit’ ‘expectile’ ‘HaarSeg’ ‘mpcbs’
```

## calmate (0.12.1)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/calmate/issues

0 errors | 0 warnings | 0 notes

## doFuture (0.3.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/doFuture/issues

0 errors | 0 warnings | 0 notes

## fiery (0.2.2)
Maintainer: Thomas Lin Pedersen <thomasp85@gmail.com>  
Bug reports: https://github.com/thomasp85/fiery/issues

0 errors | 0 warnings | 0 notes

## future.BatchJobs (0.13.1)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/future.BatchJobs/issues

0 errors | 0 warnings | 0 notes

## future (1.3.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/future/issues

0 errors | 0 warnings | 0 notes

## GeneBreak (1.4.0)
Maintainer: Evert van den Broek <vandenbroek.evert@gmail.com>

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
.glmbreak: no visible global function definition for ‘glm’
.glmbreak: no visible global function definition for ‘predict’
addGeneAnnotation,CopyNumberBreakPoints: no visible global function
  definition for ‘head’
bpStats,CopyNumberBreakPoints: no visible global function definition
  for ‘sd’
bpStats,CopyNumberBreakPoints: no visible global function definition
  for ‘p.adjust’
Undefined global functions or variables:
  glm head p.adjust predict sd
Consider adding
  importFrom("stats", "glm", "p.adjust", "predict", "sd")
  importFrom("utils", "head")
to your NAMESPACE file.
```

## googleComputeEngineR (0.1.0)
Maintainer: Mark Edmondson <r@sunholo.com>  
Bug reports: https://github.com/cloudyr/googleComputeEngineR/issues

0 errors | 0 warnings | 0 notes

## MPAgenomics (1.1.2)
Maintainer: Samuel Blanck <samuel.blanck@inria.fr>

0 errors | 0 warnings | 2 notes

```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘R.devices’ ‘R.filesets’ ‘R.methodsS3’ ‘R.oo’ ‘aroma.affymetrix’
  ‘aroma.cn’ ‘aroma.core’ ‘aroma.light’ ‘matrixStats’ ‘snowfall’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
Unexported object imported by a ':::' call: ‘cghseg:::segmeanCO’
  See the note in ?`:::` about the use of this operator.

checking R code for possible problems ... NOTE
.varregtimescount: no visible global function definition for ‘var’
CGHSEGaroma: no visible global function definition for ‘read.csv’
CGHSEGaroma : <anonymous>: no visible global function definition for
  ‘points’
CGHSEGaroma : <anonymous>: no visible global function definition for
  ‘lines’
CGHSEGaroma : <anonymous>: no visible global function definition for
  ‘write.table’
CGHcall: no visible global function definition for ‘mad’
... 43 lines ...
tumorboostPlot: no visible global function definition for ‘par’
tumorboostPlot: no visible global function definition for ‘axis’
tumorboostPlot: no visible global function definition for ‘points’
Undefined global functions or variables:
  axis head lines lm mad median optim par points read.csv sd var
  write.table
Consider adding
  importFrom("graphics", "axis", "lines", "par", "points")
  importFrom("stats", "lm", "mad", "median", "optim", "sd", "var")
  importFrom("utils", "head", "read.csv", "write.table")
to your NAMESPACE file.
```

## NSA (0.0.32)
Maintainer: Maria Ortiz-Estevez <mortizest@gmail.com>

0 errors | 0 warnings | 6 notes

```
checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘R.methodsS3’ ‘MASS’ ‘matrixStats’ ‘R.oo’ ‘R.utils’ ‘aroma.core’
  ‘aroma.affymetrix’ ‘DNAcopy’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  ‘incl’

checking dependencies in R code ... NOTE
Packages in Depends field not imported from:
  ‘DNAcopy’ ‘MASS’ ‘R.methodsS3’ ‘R.oo’ ‘aroma.affymetrix’ ‘aroma.core’
  ‘matrixStats’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.

checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  NSAByTotalAndFracB.matrix allocateOutputDataSets.NSANormalization
  allocateOutputDataSets.SNPsNormalization
  allocateOutputDataSets.SampleNormalization
  as.character.NSANormalization as.character.SNPsNormalization
  as.character.SampleNormalization findArraysTodo.NSANormalization
  findArraysTodo.SampleNormalization findUnitsTodo.SNPsNormalization
  fitNSA.matrix fitNSAcnPs.matrix getDataSets.NSANormalization
  getDataSets.SNPsNormalization getDataSets.SampleNormalization
  getName.NSANormalization getName.SNPsNormalization
  getName.SampleNormalization getOutputDataSets.NSANormalization
  getOutputDataSets.SNPsNormalization
  getOutputDataSets.SampleNormalization getPath.NSANormalization
  getPath.SNPsNormalization getPath.SampleNormalization
  getRootPath.NSANormalization getRootPath.SNPsNormalization
  getRootPath.SampleNormalization process.NSANormalization
  process.SNPsNormalization process.SampleNormalization
  sampleNByTotalAndFracB.numeric snpsNByTotalAndFracB.matrix
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.

checking R code for possible problems ... NOTE
NB: .First.lib is obsolete and will not be used in R >= 3.0.0

.First.lib: no visible global function definition for
  ‘packageDescription’
NSAByTotalAndFracB.matrix: no visible global function definition for
  ‘throw’
NSAByTotalAndFracB.matrix: no visible global function definition for
  ‘str’
NSANormalization: no visible global function definition for ‘throw’
... 279 lines ...
  extractMatrix findUnitsTodo getAsteriskTags getChipType getFile
  getFullName getFullNames getGenomeInformation getName getNames
  getPath getPathname getPathnames getPositions getRam getRootPath
  getTags getUnitsOnChromosome hist median nbrOfFiles newInstance
  packageDescription rowAlls rowMedians segment setTags str throw trim
  verbose
Consider adding
  importFrom("graphics", "hist")
  importFrom("stats", "approxfun", "median")
  importFrom("utils", "packageDescription", "str")
to your NAMESPACE file.

checking Rd line widths ... NOTE
Rd file 'NSANormalization.Rd':
  \examples lines wider than 100 characters:
     by <- 50e3; # 50kb bins; you may want to try with other amounts of smoothing xOut <- seq(from=xRange[1], to=xRange[2], by=by);
     plot(getSignals(cnCNPS), getSignals(cnSNPS), xlim=Clim, ylim=Clim); abline(a=0, b=1, col="red", lwd=2);

These lines will be truncated in the PDF manual.
```

## pbmcapply (1.2.1)
Maintainer: Kevin kuang <kvn.kuang@mail.utoronto.ca>  
Bug reports: https://github.com/kvnkuang/pbmcapply/issues

0 errors | 0 warnings | 0 notes

## PECA (1.10.0)
Maintainer: Tomi Suomi <tomi.suomi@utu.fi>

0 errors | 0 warnings | 1 note 

```
checking Rd line widths ... NOTE
Rd file 'PECA.Rd':
  \usage lines wider than 90 characters:
     PECA_AffyBatch(affy=NULL, normalize=FALSE, test="t", type="median", paired=FALSE, progress=FALSE)

These lines will be truncated in the PDF manual.
```

## PSCBS (0.62.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/PSCBS/issues

0 errors | 0 warnings | 0 notes

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

## QDNAseq (1.10.0)
Maintainer: Daoud Sie <d.sie@vumc.nl>  
Bug reports: https://github.com/ccagc/QDNAseq/issues

0 errors | 0 warnings | 0 notes

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

## R.filesets (2.11.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/R.filesets/issues

0 errors | 0 warnings | 0 notes

## TIN (1.6.0)
Maintainer: Bjarne Johannessen <bjajoh@rr-research.no>

0 errors | 0 warnings | 2 notes

```
checking top-level files ... NOTE
Non-standard file/directory found at top level:
  ‘doc’

checking R code for possible problems ... NOTE
aberrantExonUsage: no visible global function definition for ‘quantile’
aberrantExonUsage: no visible global function definition for ‘ave’
clusterPlot: no visible global function definition for ‘dist’
clusterPlot: no visible global function definition for ‘hclust’
clusterPlot: no visible global function definition for
  ‘colorRampPalette’
clusterPlot: no visible global function definition for ‘par’
clusterPlot: no visible global function definition for ‘png’
clusterPlot: no visible global function definition for ‘jpeg’
... 50 lines ...
  importFrom("stats", "ave", "dist", "hclust", "median", "quantile")
  importFrom("utils", "data", "read.table")
to your NAMESPACE file.

Found the following assignments to the global environment:
File ‘TIN/R/aberrantExonUsage.R’:
  assign("quantiles", quantiles, envir = .GlobalEnv)
  assign("aberrantExons", aberrantExons, envir = .GlobalEnv)
File ‘TIN/R/correlationPlot.R’:
  assign("randomGeneSetsDist", B, envir = .GlobalEnv)
  assign("traPermutationsDist", L, envir = .GlobalEnv)
```

