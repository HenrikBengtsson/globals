## revdepcheck results

We checked 370 reverse dependencies (349 from CRAN + 21 from Bioconductor), comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 2 new problems
 * We failed to check 1 packages

Issues with CRAN packages are summarised below.

### New problems
(This reports the first line of each new failure)

* mrgsim.parallel
  checking dependencies in R code ...sh: line 1: 21833 Illegal instruction     (core dumped) R_DEFAULT_PACKAGES=NULL '/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/bin/R' --vanilla --no-echo 2>&1 < '/scratch/henrik/RtmplBWF0s/file459036e11633'

* sparklyr
  checking dependencies in R code ...sh: line 1: 36840 Illegal instruction     (core dumped) R_DEFAULT_PACKAGES=NULL '/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/bin/R' --vanilla --no-echo 2>&1 < '/scratch/henrik/RtmpKpyzKk/file445440d70b11'

### Failed to check

* oolong (NA)
