# aroma.core

Version: 3.1.3

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘sfit’ ‘expectile’ ‘HaarSeg’ ‘mpcbs’
    ```

# batchtools

Version: 0.9.11

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    No readable configuration file found
    Created registry in '/scratch/hb/RtmpDmYIpe/registry4c9c76523a32' using cluster functions 'Interactive'
    No readable configuration file found
    Created registry in '/scratch/hb/RtmpDmYIpe/registry4c9c15698369' using cluster functions 'Interactive'
    No readable configuration file found
    Created registry in '/scratch/hb/RtmpDmYIpe/registry4c9c36cb32d4' using cluster functions 'Interactive'
    No readable configuration file found
    Created registry in '/scratch/hb/RtmpDmYIpe/registry4c9c3a564e6e' using cluster functions 'Interactive'
    Error in (function (value)  : Ooops.
    ! LaTeX Error: File `framed.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'batchtools.Rmd' failed with diagnostics:
    Failed to compile batchtools.tex. See batchtools.log for more info.
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    libmpi.so: cannot open shared object file: No such file or directory
    ```

# biotmle

Version: 1.4.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    .biotmle: no visible global function definition for ‘new’
    Undefined global functions or variables:
      new
    Consider adding
      importFrom("methods", "new")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# brms

Version: 2.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'brms_multilevel.ltx' failed with diagnostics:
    Running 'texi2dvi' on 'brms_multilevel.ltx' failed.
    LaTeX errors:
    ! LaTeX Error: File `inconsolata.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.47 \RequirePackage
                        [T1]{fontenc}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Execution halted
    ```

# codebook

Version: 0.6.3

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘graphics’ ‘pander’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 65 marked UTF-8 strings
    ```

# DeclareDesign

Version: 0.10.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(DeclareDesign)
      Loading required package: randomizr
      Loading required package: fabricatr
      Loading required package: estimatr
      > 
      > test_check("DeclareDesign")
      ── 1. Failure: error if you try to draw POs at a level using a variable that doe
      `my_potential_outcomes_formula(pop)` did not throw an error.
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 434 SKIPPED: 2 FAILED: 1
      1. Failure: error if you try to draw POs at a level using a variable that doesn't exist at that level (@test-potential-outcomes.R#160) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘sf’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# fiery

Version: 1.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘desc’
      All declared Imports should be used.
    ```

# jstor

Version: 0.3.2

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(jstor)
      > 
      > test_check("jstor")
      ── 1. Error: (unknown) (@test-journal-overview.R#4)  ───────────────────────────
      You don't seem to have a connection to the internet.
      1: jst_get_journal_overview(most_recent = T, quiet = T) at testthat/test-journal-overview.R:4
      2: abort("You don't seem to have a connection to the internet.")
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 234 SKIPPED: 2 FAILED: 1
      1. Error: (unknown) (@test-journal-overview.R#4) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# lidR

Version: 1.6.1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available:
      ‘concaveman’ ‘mapview’ ‘mapedit’ ‘rlas’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# MetamapsDB

Version: 0.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Matrix’ ‘shiny’
      All declared Imports should be used.
    ```

# penaltyLearning

Version: 2017.12.08

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Actual message: "The implementation of future_lapply() in the 'future' package is defunct. Please use the one in the 'future.apply' package instead."
      
      ── 3. Failure: error for NA and constant features (@test-errors.R#124)  ────────
      `{ ... }` threw an error with unexpected message.
      Expected match: "after filtering NA and constant features, none remain for training"
      Actual message: "The implementation of future_lapply() in the 'future' package is defunct. Please use the one in the 'future.apply' package instead."
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 50 SKIPPED: 0 FAILED: 3
      1. Error: (unknown) (@test-demo8.R#8) 
      2. Failure: error for constant features (@test-errors.R#110) 
      3. Failure: error for NA and constant features (@test-errors.R#124) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# QDNAseq

Version: 1.16.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘exportVCF’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    34902848153068186.562.3707735014899778378113.7612687612349815327.394.3
    FINISHED!
    
    Total time:0minutes
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'QDNAseq.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `titlesec.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.95 \makeatletter
                      ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# reproducible

Version: 0.2.3

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘sf’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# robotstxt

Version: 0.6.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    
     google.com                      Quitting from lines 48-51 (using_robotstxt.Rmd) 
    Error: processing vignette 'using_robotstxt.Rmd' failed with diagnostics:
    Could not resolve host: google.com; Name or service not known
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# skpr

Version: 0.54.3

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        libs   4.8Mb
    ```

# sperrorest

Version: 2.1.5

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    pandoc: Could not fetch https://raw.githubusercontent.com/pat-s/sperrorest/master/man/figures/resamp-plot.png
    FailedConnectionException2 "raw.githubusercontent.com" 443 True getAddrInfo: does not exist (Name or service not known)
    Error: processing vignette 'spatial-modeling-use-case.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 67
    Execution halted
    ```

# vinereg

Version: 0.5.0

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rvinecopulib’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

