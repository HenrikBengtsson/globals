# adept

<details>

* Version: 1.1.2
* Source code: https://github.com/cran/adept
* URL: https://github.com/martakarass/adept
* BugReports: https://github.com/martakarass/adept/issues
* Date/Publication: 2019-06-18 06:50:03 UTC
* Number of recursive dependencies: 92

Run `revdep_details(, "adept")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# alookr

<details>

* Version: 0.3.2
* Source code: https://github.com/cran/alookr
* BugReports: https://github.com/choonghyunryu/alookr/issues
* Date/Publication: 2020-06-07 16:50:07 UTC
* Number of recursive dependencies: 203

Run `revdep_details(, "alookr")` for more info

</details>

## In both

*   checking whether package ‘alookr’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/wynton/home/cbi/hb/repositories/globals/revdep/checks/alookr/new/alookr.Rcheck/00install.out’ for details.
    ```

# aroma.core

<details>

* Version: 3.2.1
* Source code: https://github.com/cran/aroma.core
* URL: https://github.com/HenrikBengtsson/aroma.core, https://www.aroma-project.org/
* BugReports: https://github.com/HenrikBengtsson/aroma.core/issues
* Date/Publication: 2020-02-04 15:20:21 UTC
* Number of recursive dependencies: 46

Run `revdep_details(, "aroma.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'GLAD', 'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘GLAD’ in Rd xrefs
    ```

# BAMBI

<details>

* Version: 2.3.0
* Source code: https://github.com/cran/BAMBI
* URL: https://arxiv.org/abs/1708.07804
* BugReports: https://github.com/c7rishi/BAMBI/issues
* Date/Publication: 2020-06-19 13:50:07 UTC
* Number of recursive dependencies: 48

Run `revdep_details(, "BAMBI")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stats4’
      All declared Imports should be used.
    ```

# batchtools

<details>

* Version: 0.9.13
* Source code: https://github.com/cran/batchtools
* URL: https://github.com/mllg/batchtools
* BugReports: https://github.com/mllg/batchtools/issues
* Date/Publication: 2020-03-19 23:00:02 UTC
* Number of recursive dependencies: 74

Run `revdep_details(, "batchtools")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘Rmpi’ in Rd xrefs
    ```

# bcmaps

<details>

* Version: 0.18.1
* Source code: https://github.com/cran/bcmaps
* URL: https://github.com/bcgov/bcmaps
* BugReports: https://github.com/bcgov/bcmaps/issues
* Date/Publication: 2020-04-29 10:30:10 UTC
* Number of recursive dependencies: 83

Run `revdep_details(, "bcmaps")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘bcmapsdata’
    ```

# blavaan

<details>

* Version: 0.3-10
* Source code: https://github.com/cran/blavaan
* Date/Publication: 2020-08-03 06:40:02 UTC
* Number of recursive dependencies: 109

Run `revdep_details(, "blavaan")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
    ...
      Left-hand side of sampling statement (~) may contain a non-linear transform of a parameter or local variable.
      If it does, you need to include a target += statement with the log absolute determinant of the Jacobian of the transform.
      Left-hand-side of sampling statement:
          eta ~ sem_lv_lpdf(...)
      
      ── 1. Error: blavaan object methods work (@tests.blavaanobject-methods.R#113)  ─
      Did you mean to create the future within a function?  Invalid future expression tries to use global '...' variables that do not exist: FUN()
      Backtrace:
       1. blavaan::ppmc(fitstan)
       2. blavaan:::postpred(...)
       4. future.apply::future_lapply(...)
       5. future.apply:::future_xapply(...)
       6. future.apply:::getGlobalsAndPackagesXApply(...)
       7. future::getGlobalsAndPackages(expr, envir = envir, globals = globals)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 67 | SKIPPED: 0 | WARNINGS: 7 | FAILED: 1 ]
      1. Error: blavaan object methods work (@tests.blavaanobject-methods.R#113) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        libs   4.6Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# blockCV

<details>

* Version: 2.1.1
* Source code: https://github.com/cran/blockCV
* URL: https://github.com/rvalavi/blockCV
* Date/Publication: 2020-02-23 20:00:02 UTC
* Number of recursive dependencies: 105

Run `revdep_details(, "blockCV")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘biomod2’
    ```

# brms

<details>

* Version: 2.13.5
* Source code: https://github.com/cran/brms
* URL: https://github.com/paul-buerkner/brms, http://discourse.mc-stan.org
* BugReports: https://github.com/paul-buerkner/brms/issues
* Date/Publication: 2020-07-31 08:40:03 UTC
* Number of recursive dependencies: 180

Run `revdep_details(, "brms")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

# CLVTools

<details>

* Version: 0.6.0
* Source code: https://github.com/cran/CLVTools
* URL: https://github.com/bachmannpatrick/CLVTools
* BugReports: https://github.com/bachmannpatrick/CLVTools/issues
* Date/Publication: 2020-06-24 22:10:02 UTC
* Number of recursive dependencies: 87

Run `revdep_details(, "CLVTools")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        libs   5.2Mb
    ```

# codebook

<details>

* Version: 0.9.2
* Source code: https://github.com/cran/codebook
* URL: https://github.com/rubenarslan/codebook
* BugReports: https://github.com/rubenarslan/codebook/issues
* Date/Publication: 2020-06-06 23:40:03 UTC
* Number of recursive dependencies: 191

Run `revdep_details(, "codebook")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘userfriendlyscience’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘graphics’ ‘jsonlite’ ‘rlang’ ‘tidyselect’ ‘vctrs’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 65 marked UTF-8 strings
    ```

# cSEM

<details>

* Version: 0.2.0
* Source code: https://github.com/cran/cSEM
* URL: https://github.com/M-E-Rademaker/cSEM, https://m-e-rademaker.github.io/cSEM/
* BugReports: https://github.com/M-E-Rademaker/cSEM/issues
* Date/Publication: 2020-03-29 11:00:20 UTC
* Number of recursive dependencies: 113

Run `revdep_details(, "cSEM")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rdpack’
      All declared Imports should be used.
    ```

# cvms

<details>

* Version: 1.0.2
* Source code: https://github.com/cran/cvms
* URL: https://github.com/ludvigolsen/cvms
* BugReports: https://github.com/ludvigolsen/cvms/issues
* Date/Publication: 2020-05-29 00:00:10 UTC
* Number of recursive dependencies: 118

Run `revdep_details(, "cvms")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rsvg’
    ```

# datapackage.r

<details>

* Version: 1.3.1
* Source code: https://github.com/cran/datapackage.r
* URL: https://github.com/frictionlessdata/datapackage-r
* BugReports: https://github.com/frictionlessdata/datapackage-r/issues
* Date/Publication: 2020-05-06 22:10:09 UTC
* Number of recursive dependencies: 109

Run `revdep_details(, "datapackage.r")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘iterators’ ‘readr’
      All declared Imports should be used.
    ```

# delayed

<details>

* Version: 0.3.0
* Source code: https://github.com/cran/delayed
* URL: https://tlverse.org/delayed
* BugReports: https://github.com/tlverse/delayed/issues
* Date/Publication: 2020-02-28 11:40:02 UTC
* Number of recursive dependencies: 65

Run `revdep_details(, "delayed")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘assertthat’
      All declared Imports should be used.
    ```

# dragon

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/dragon
* URL: https://github.com/sjspielman/dragon
* BugReports: https://github.com/sjspielman/dragon/issues
* Date/Publication: 2020-07-19 00:10:03 UTC
* Number of recursive dependencies: 124

Run `revdep_details(, "dragon")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘htmltools’ ‘magrittr’ ‘promises’
      All declared Imports should be used.
    ```

# drake

<details>

* Version: 7.12.4
* Source code: https://github.com/cran/drake
* URL: https://github.com/ropensci/drake, https://docs.ropensci.org/drake, https://books.ropensci.org/drake/
* BugReports: https://github.com/ropensci/drake/issues
* Date/Publication: 2020-06-29 17:20:03 UTC
* Number of recursive dependencies: 142

Run `revdep_details(, "drake")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘clustermq’
    ```

# evaluator

<details>

* Version: 0.4.2
* Source code: https://github.com/cran/evaluator
* URL: https://evaluator.tidyrisk.org
* BugReports: https://github.com/davidski/evaluator/issues
* Date/Publication: 2020-04-16 09:20:09 UTC
* Number of recursive dependencies: 136

Run `revdep_details(, "evaluator")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      +   message("Using phantom.js from ", shinytest:::find_phantom(), "\n")
      + }
      > 
      > test_check("evaluator")
      pandoc: Could not determine mime type for `/wynton/home/cbi/hb/repositories/globals/revdep/library/evaluator/rmarkdown/rmd/h/fontawesome/css/../webfonts/fa-brands-400.woff2'
      ── 1. Error: Risk Dashboard renders (@test-reports.R#50)  ──────────────────────
      pandoc document conversion failed with error 1
      Backtrace:
       1. testthat::evaluate_promise(...)
       6. evaluator::risk_dashboard(...)
       7. rmarkdown::render(...)
       8. rmarkdown:::convert(output_file, run_citeproc)
       9. rmarkdown::pandoc_convert(...)
      
      # Scenario model: openfair_tef_tc_diff_lm
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 137 | SKIPPED: 4 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: Risk Dashboard renders (@test-reports.R#50) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# fabletools

<details>

* Version: 0.2.0
* Source code: https://github.com/cran/fabletools
* URL: http://fabletools.tidyverts.org/, https://github.com/tidyverts/fabletools
* BugReports: https://github.com/tidyverts/fabletools/issues
* Date/Publication: 2020-06-15 23:40:08 UTC
* Number of recursive dependencies: 95

Run `revdep_details(, "fabletools")` for more info

</details>

## In both

*   checking S3 generic/method consistency ... WARNING
    ```
    Failed to query server: Connection timed out
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking replacement functions ... WARNING
    ```
    Failed to query server: Connection timed out
    The argument of a replacement function which corresponds to the right
    hand side must be named ‘value’.
    ```

*   checking Rd files ... WARNING
    ```
    Failed to query server: Connection timed out
    prepare_Rd: running command 'timedatectl' had status 1
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Failed to query server: Connection timed out
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Failed to query server: Connection timed out
    Failed to query server: Connection timed out
    Failed to query server: Connection timed out
    ```

*   checking for unstated dependencies in examples ... WARNING
    ```
    Failed to query server: Connection timed out
    Warning in system("timedatectl", intern = TRUE) :
      running command 'timedatectl' had status 1
    ```

*   checking dependencies in R code ... NOTE
    ```
    Failed to query server: Connection timed out
    Namespace in Imports field not imported from: ‘lifecycle’
      All declared Imports should be used.
    ```

*   checking foreign function calls ... NOTE
    ```
    Failed to query server: Connection timed out
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Failed to query server: Connection timed out
    ```

*   checking Rd \usage sections ... NOTE
    ```
    Failed to query server: Connection timed out
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# foieGras

<details>

* Version: 0.6-9
* Source code: https://github.com/cran/foieGras
* URL: <https://cran.r-project.org/package=foieGras>
* BugReports: https://github.com/ianjonsen/foieGras/issues
* Date/Publication: 2020-07-22 21:50:02 UTC
* Number of recursive dependencies: 119

Run `revdep_details(, "foieGras")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.8Mb
      sub-directories of 1Mb or more:
        libs  12.7Mb
    ```

# forecastML

<details>

* Version: 0.9.0
* Source code: https://github.com/cran/forecastML
* URL: https://github.com/nredell/forecastML/
* Date/Publication: 2020-05-07 15:10:17 UTC
* Number of recursive dependencies: 94

Run `revdep_details(, "forecastML")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dtplyr’
      All declared Imports should be used.
    ```

# future

<details>

* Version: 1.18.0
* Source code: https://github.com/cran/future
* URL: https://github.com/HenrikBengtsson/future
* BugReports: https://github.com/HenrikBengtsson/future/issues
* Date/Publication: 2020-07-09 05:40:03 UTC
* Number of recursive dependencies: 13

Run `revdep_details(, "future")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      [21:39:30.734]     ...future.result
      [21:39:30.734] }
      [21:39:30.740] requestCore(): workers = 2
      [21:39:30.742] MulticoreFuture started
      [21:39:30.755] plan(): Setting new future strategy stack:
      [21:39:30.756] List of future strategies:
      [21:39:30.756] 1. sequential:
      [21:39:30.756]    - args: function (expr, envir = parent.frame(), substitute = TRUE, lazy = FALSE, seed = NULL, globals = TRUE, local = TRUE, earlySignal = FALSE, label = NULL, ...)
      [21:39:30.756]    - tweaked: FALSE
      [21:39:30.756]    - call: NULL
      [21:39:30.760] plan(): nbrOfWorkers() = 1
      [21:39:30.765] plan(): Setting new future strategy stack:
      [21:39:30.766] List of future strategies:
      [21:39:30.766] 1. multicore:
      [21:39:30.766]    - args: function (expr, envir = parent.frame(), substitute = TRUE, lazy = FALSE, seed = NULL, globals = TRUE, workers = availableCores(constraints = "multicore"), earlySignal = FALSE, label = NULL, ...)
      [21:39:30.766]    - tweaked: FALSE
      [21:39:30.766]    - call: plan(multicore)
      [21:39:30.770] plan(): nbrOfWorkers() = 2
      Number of OpenMP threads in 'MulticoreFuture' future: 1
      Error: enable && nthreads > 1L is not TRUE
      Execution halted
    ```

# GetBCBData

<details>

* Version: 0.5
* Source code: https://github.com/cran/GetBCBData
* URL: https://github.com/msperlin/GetBCBData/
* BugReports: https://github.com/msperlin/GetBCBData/issues
* Date/Publication: 2019-04-23 10:10:29 UTC
* Number of recursive dependencies: 101

Run `revdep_details(, "GetBCBData")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RCurl’ ‘lubridate’ ‘readr’ ‘stats’
      All declared Imports should be used.
    ```

# grattan

<details>

* Version: 1.9.0.0
* Source code: https://github.com/cran/grattan
* URL: https://github.com/HughParsonage/grattan, https://hughparsonage.github.io/grattan/
* BugReports: https://github.com/HughParsonage/grattan/issues
* Date/Publication: 2020-07-13 14:20:06 UTC
* Number of recursive dependencies: 113

Run `revdep_details(, "grattan")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'taxstats', 'taxstats1516'
    ```

# gWQS

<details>

* Version: 3.0.0
* Source code: https://github.com/cran/gWQS
* Date/Publication: 2020-06-23 13:00:03 UTC
* Number of recursive dependencies: 104

Run `revdep_details(, "gWQS")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dplyr’
      All declared Imports should be used.
    ```

# idmodelr

<details>

* Version: 0.3.2
* Source code: https://github.com/cran/idmodelr
* URL: http://www.samabbott.co.uk/idmodelr, https://github.com/seabbs/idmodelr
* BugReports: https://github.com/seabbs/idmodelr/issues
* Date/Publication: 2020-06-11 14:20:03 UTC
* Number of recursive dependencies: 129

Run `revdep_details(, "idmodelr")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘vdiffr’
    ```

# iml

<details>

* Version: 0.10.0
* Source code: https://github.com/cran/iml
* URL: https://github.com/christophM/iml
* BugReports: https://github.com/christophM/iml/issues
* Date/Publication: 2020-03-26 10:20:03 UTC
* Number of recursive dependencies: 154

Run `revdep_details(, "iml")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# infercnv

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/infercnv
* URL: https://github.com/broadinstitute/inferCNV/wiki
* BugReports: https://github.com/broadinstitute/inferCNV/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 122

Run `revdep_details(, "infercnv")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘HiddenMarkov:::makedensity’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .plot_cnv_references: no visible binding for global variable
      ‘infercnv_obj’
    Undefined global functions or variables:
      infercnv_obj
    ```

# inlinedocs

<details>

* Version: 2019.12.5
* Source code: https://github.com/cran/inlinedocs
* URL: http://github.com/tdhock/inlinedocs
* BugReports: http://github.com/tdhock/inlinedocs/issues
* Date/Publication: 2019-12-05 23:30:07 UTC
* Number of recursive dependencies: 6

Run `revdep_details(, "inlinedocs")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘R.methodsS3’ in Rd xrefs
    ```

# ipc

<details>

* Version: 0.1.3
* Source code: https://github.com/cran/ipc
* URL: https://github.com/fellstat/ipc
* BugReports: https://github.com/fellstat/ipc/issues
* Date/Publication: 2019-06-23 06:00:03 UTC
* Number of recursive dependencies: 56

Run `revdep_details(, "ipc")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘redux’
    ```

# lgr

<details>

* Version: 0.3.4
* Source code: https://github.com/cran/lgr
* URL: https://s-fleck.github.io/lgr
* BugReports: https://github.com/s-fleck/lgr/issues
* Date/Publication: 2020-03-20 11:50:02 UTC
* Number of recursive dependencies: 79

Run `revdep_details(, "lgr")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'RMariaDB', 'RPostgres'
    ```

# lidR

<details>

* Version: 3.0.3
* Source code: https://github.com/cran/lidR
* URL: https://github.com/Jean-Romain/lidR
* BugReports: https://github.com/Jean-Romain/lidR/issues
* Date/Publication: 2020-08-03 06:30:10 UTC
* Number of recursive dependencies: 154

Run `revdep_details(, "lidR")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
    ...
      Did you mean to create the future within a function?  Invalid future expression tries to use global '...' variables that do not exist: {; setThreads(threads); options(lidR.progress = FALSE); options(lidR.verbose = FALSE); y <- NULL; if (.AUTOREAD == FALSE) {; ...; y <- writeANY(y, save, drivers); y; }
      Backtrace:
       1. lidR::catalog_apply(ctg, rtest, .options = option)
       2. lidR:::cluster_apply(clusters, FUN, pop, oop, glo, rea, ...)
       3. future::future(...)
       4. future:::makeFuture(...)
       5. future::SequentialFuture(...)
       6. future::UniprocessFuture(...)
       7. future::getGlobalsAndPackages(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 1134 | SKIPPED: 1 | WARNINGS: 0 | FAILED: 6 ]
      1. Error: catalog_apply automerge works with in memory RastersLayer (@test-catalog_apply-automerge.R#69) 
      2. Error: catalog_apply automerge works with in memory RastersBrick (@test-catalog_apply-automerge.R#89) 
      3. Error: catalog_apply automerge works with on disk RastersLayer (VRT) (@test-catalog_apply-automerge.R#114) 
      4. Error: catalog_apply automerge works with on disk RastersBrick (VRT) (@test-catalog_apply-automerge.R#133) 
      5. Error: catalog_sapply is the same than apply with automerge (@test-catalog_apply-automerge.R#271) 
      6. Error: catalog_apply automerge disabled with opt_merge = FALSE (@test-catalog_apply-automerge.R#285) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# lmtp

<details>

* Version: 0.0.5
* Source code: https://github.com/cran/lmtp
* Date/Publication: 2020-07-18 09:10:02 UTC
* Number of recursive dependencies: 77

Run `revdep_details(, "lmtp")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘sl3’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R6’ ‘nnls’ ‘utils’
      All declared Imports should be used.
    ```

# methyvim

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/methyvim
* URL: https://github.com/nhejazi/methyvim
* BugReports: https://github.com/nhejazi/methyvim/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 204

Run `revdep_details(, "methyvim")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      > library(testthat)
      > library(methyvim)
      Setting options('download.file.method.GEOquery'='auto')
      Setting options('GEOquery.inmemory.gpl'=FALSE)
      methyvim v1.10.0: Targeted, Robust, and Model-free Differential Methylation Analysis
      > 
      > set.seed(43719)
      > test_check("methyvim")
      ── 1. Error: (unknown) (@test-methyvim.R#22)  ──────────────────────────────────
      'names' attribute [8] must be the same length as the vector [1]
      Backtrace:
       1. base::suppressWarnings(...)
       3. methyvim::methyvim(...)
       5. base::`colnames<-`(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 34 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: (unknown) (@test-methyvim.R#22) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘tmle.npvi’
    ```

# MineICA

<details>

* Version: 1.28.0
* Source code: https://github.com/cran/MineICA
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 202

Run `revdep_details(, "MineICA")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    > 
    > ### ** Examples
    > 
    > ## generate a data
    > set.seed(2004);
    > M <- matrix(rnorm(5000*6,sd=0.3),ncol=10)
    > M[1:100,1:3] <- M[1:100,1:3] + 2
    > M[1:200,1:3] <- M[1:200,4:6] +1
    > 
    > ## Random initializations are used for each iteration of FastICA
    > ## Estimates are clustered using hierarchical clustering with average linkage
    > res <- clusterFastICARuns(X=M, nbComp=2, alg.type="deflation",
    +                           nbIt=3, funClus="hclust", method="average")
    FastICA iteration 1
    Warning: executing %dopar% sequentially: no parallel backend registered
    FastICA iteration 2
    FastICA iteration 3
    Error in getGlobalsAndPackages(expr, envir = envir, globals = globals) : 
      Did you mean to create the future within a function?  Invalid future expression tries to use global '...' variables that do not exist: FUN(partition = c(1L, 2L, 1L, 2L, 1L, 2L), sim = structure(c(1,; 0.45525438763963, 0.999999980082089, 0.455209038564824, 0.765868100880116,; 0.306638516569895, 0.45525438763963, 1, 0.455432085034435, 0.999999998702932,; 0.223835533103493, 0.987067710821389, 0.999999980082089, 0.455432085034435,; 1, 0.455386740588239, 0.765739750270337, 0.306828484597841, 0.455209038564824,; 0.999999998702932, 0.455386740588239, 1, 0.223885173165408, 0.98707587424583,; 0.765868100880116, 0.223835533103493, 0.765739750270337, 0.223885173165408,; 1, 0.377177306755503, 0.306638516569895, 0.987067710821389, 0.306828484597841,; 0.98707587424583, 0.377177306755503, 1), .Dim = c(6L, 6L)), funClus = "hclust")
    Calls: clusterFastICARuns ... getGlobalsAndPackagesXApply -> getGlobalsAndPackages
    Execution halted
    ```

## In both

*   checking running R code from vignettes ...
    ```
      ‘MineICA.Rnw’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘MineICA.Rnw’
      ...
    
    > resPath(params)
    [1] "mainz/"
    
    > resW <- writeProjByComp(icaSet = icaSetMainz, params = params, 
    +     mart = mart, level = "genes", selCutoffWrite = 2.5)
    
      When sourcing ‘MineICA.R’:
    Error: task 1 failed - "Multiple cache results found"
    Execution halted
    ```

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'Alist.Rd':
      ‘class-IcaSet’
    
    Missing link or links in documentation object 'Slist.Rd':
      ‘class-IcaSet’
    
    Missing link or links in documentation object 'class-IcaSet.Rd':
      ‘class-IcaSet’
    
    Missing link or links in documentation object 'getComp.Rd':
      ‘class-IcaSet’
    
    Missing link or links in documentation object 'runAn.Rd':
      ‘[Category:class-GOHyperGParams]{GOHyperGParams}’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented S4 classes:
      ‘MineICAParams’
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘doMC’
    
    Depends: includes the non-default packages:
      'BiocGenerics', 'Biobase', 'plyr', 'ggplot2', 'scales', 'foreach',
      'xtable', 'biomaRt', 'gtools', 'GOstats', 'cluster', 'marray',
      'mclust', 'RColorBrewer', 'colorspace', 'igraph', 'Rgraphviz',
      'graph', 'annotate', 'Hmisc', 'fastICA', 'JADE'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Packages listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘biomaRt’ ‘GOstats’ ‘cluster’ ‘mclust’ ‘igraph’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘GOstats’ which was already attached by Depends.
      Please remove these calls from your code.
    Namespace in Imports field not imported from: ‘lumiHumanAll.db’
      All declared Imports should be used.
    Packages in Depends field not imported from:
      ‘GOstats’ ‘Hmisc’ ‘JADE’ ‘RColorBrewer’ ‘Rgraphviz’ ‘annotate’
      ‘biomaRt’ ‘cluster’ ‘colorspace’ ‘fastICA’ ‘foreach’ ‘ggplot2’
      ‘graph’ ‘gtools’ ‘igraph’ ‘marray’ ‘mclust’ ‘methods’ ‘plyr’ ‘scales’
      ‘xtable’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ':::' calls which should be '::':
      ‘Biobase:::annotation<-’ ‘Biobase:::validMsg’ ‘fpc:::pamk’
      ‘lumi:::getChipInfo’ ‘mclust:::adjustedRandIndex’
      See the note in ?`:::` about the use of this operator.
    Unexported object imported by a ':::' call: ‘Biobase:::isValidVersion’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    ...
      position_jitter pushViewport quantile rainbow_hcl rcorr read.table
      reorder scale_colour_gradientn scale_colour_manual scale_fill_manual
      scale_linetype_manual scale_shape_manual scale_x_continuous
      scale_x_discrete scale_y_continuous shapiro.test sigCategories
      terrain_hcl theme theme_bw title tkplot.fit.to.screen unit useMart
      validObject vcount viewport wilcox.test write.table xlab xtable
    Consider adding
      importFrom("grDevices", "cm.colors", "dev.off", "graphics.off",
                 "heat.colors", "pdf")
      importFrom("graphics", "abline", "axis", "frame", "hist", "layout",
                 "legend", "mtext", "par", "plot.new", "points", "title")
      importFrom("methods", "callNextMethod", "new", "validObject")
      importFrom("stats", "aggregate", "as.dendrogram", "as.dist",
                 "as.hclust", "chisq.test", "cor", "cor.test", "cutree",
                 "dist", "hclust", "kmeans", "kruskal.test", "lm", "median",
                 "na.omit", "order.dendrogram", "p.adjust", "quantile",
                 "reorder", "shapiro.test", "wilcox.test")
      importFrom("utils", "capture.output", "combn", "read.table",
                 "write.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# nlrx

<details>

* Version: 0.4.1
* Source code: https://github.com/cran/nlrx
* URL: https://docs.ropensci.org/nlrx, https://github.com/ropensci/nlrx/
* BugReports: https://github.com/ropensci/nlrx/issues/
* Date/Publication: 2020-02-07 09:40:02 UTC
* Number of recursive dependencies: 114

Run `revdep_details(, "nlrx")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    > 
    > # Define output directory:
    > outdir <- tempdir()  # adjust path to your needs
    > 
    > # Create documentation:
    > nldoc(modelfiles = modelfiles,
    +       infotab=TRUE,
    +       gui=TRUE,
    +       bs=TRUE,
    +       outpath = outdir,
    +       output_format = "html",
    +       number_sections = TRUE,
    +       theme = "cosmo",
    +       date = date(),
    +       toc = TRUE)
    /usr/bin/pandoc +RTS -K512m -RTS nldoc.utf8.md --to html4 --from markdown+autolink_bare_uris+tex_math_single_backslash --output nldoc.html --email-obfuscation none --self-contained --standalone --section-divs --table-of-contents --toc-depth 3 --template /wynton/home/cbi/hb/repositories/globals/revdep/library/nlrx/rmarkdown/rmd/h/default.html --no-highlight --variable highlightjs=1 --number-sections --variable 'theme:cosmo' --include-in-header /scratch/hb/RtmpZDBs3z/rmarkdown-str12fa31651f2a.html --mathjax --variable 'mathjax-url:https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML' 
    Fetching http://ccl.northwestern.edu/images/creativecommons/byncsa.png...
    pandoc: Failed to retrieve http://ccl.northwestern.edu/images/creativecommons/byncsa.png
    user error (openTCPConnection: host lookup failure for "ccl.northwestern.edu")
    Error: pandoc document conversion failed with error 61
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      > 
      > test_check("nlrx", filter = "nldoc")
      /usr/bin/pandoc +RTS -K512m -RTS nldoc.utf8.md --to html4 --from markdown+autolink_bare_uris+tex_math_single_backslash --output nldoc.html --email-obfuscation none --self-contained --standalone --section-divs --table-of-contents --toc-depth 3 --template /wynton/home/cbi/hb/repositories/globals/revdep/library/nlrx/rmarkdown/rmd/h/default.html --no-highlight --variable highlightjs=1 --number-sections --variable 'theme:cosmo' --include-in-header /scratch/hb/RtmpI5996W/rmarkdown-str16b34327e82c.html --mathjax --variable 'mathjax-url:https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML' 
      Fetching http://ccl.northwestern.edu/images/creativecommons/byncsa.png...
      pandoc: Failed to retrieve http://ccl.northwestern.edu/images/creativecommons/byncsa.png
      user error (openTCPConnection: host lookup failure for "ccl.northwestern.edu")
      ── 1. Error: nldoc (@test-nldoc.R#14)  ─────────────────────────────────────────
      pandoc document conversion failed with error 61
      Backtrace:
       1. nlrx::nldoc(...)
       2. nlrx:::nldoc_write_nldoc(...)
       3. rmarkdown::render(mdfile)
       4. rmarkdown:::convert(output_file, run_citeproc)
       5. rmarkdown::pandoc_convert(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 0 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: nldoc (@test-nldoc.R#14) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# origami

<details>

* Version: 1.0.3
* Source code: https://github.com/cran/origami
* URL: https://tlverse.org/origami
* BugReports: https://github.com/tlverse/origami/issues
* Date/Publication: 2020-01-16 22:40:02 UTC
* Number of recursive dependencies: 82

Run `revdep_details(, "origami")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘glmnet’ in Rd xrefs
    ```

# PCRedux

<details>

* Version: 1.0-6
* Source code: https://github.com/cran/PCRedux
* URL: https://CRAN.R-project.org/package=PCRedux
* BugReports: https://github.com/PCRuniversum/PCRedux/issues
* Date/Publication: 2020-03-06 08:10:02 UTC
* Number of recursive dependencies: 117

Run `revdep_details(, "PCRedux")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘FFTrees’
    ```

# phylolm

<details>

* Version: 2.6.2
* Source code: https://github.com/cran/phylolm
* URL: https://github.com/lamho86/phylolm
* BugReports: https://github.com/lamho86/phylolm/issues
* Date/Publication: 2020-06-22 05:10:08 UTC
* Number of recursive dependencies: 33

Run `revdep_details(, "phylolm")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Unknown packages ‘geiger’, ‘caper’ in Rd xrefs
    ```

# promises

<details>

* Version: 1.1.1
* Source code: https://github.com/cran/promises
* URL: https://rstudio.github.io/promises, https://github.com/rstudio/promises
* BugReports: https://github.com/rstudio/promises/issues
* Date/Publication: 2020-06-09 21:50:02 UTC
* Number of recursive dependencies: 44

Run `revdep_details(, "promises")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘purrr’ in Rd xrefs
    ```

# Prostar

<details>

* Version: 1.20.0
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 282

Run `revdep_details(, "Prostar")` for more info

</details>

## In both

*   checking whether package ‘Prostar’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/wynton/home/cbi/hb/repositories/globals/revdep/checks/Prostar/new/Prostar.Rcheck/00install.out’ for details.
    ```

# QDNAseq

<details>

* Version: 1.24.0
* Source code: https://github.com/cran/QDNAseq
* URL: https://github.com/ccagc/QDNAseq
* BugReports: https://github.com/ccagc/QDNAseq/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 70

Run `revdep_details(, "QDNAseq")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'QDNAseq.hg19', 'QDNAseq.mm10'
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# qtl2pleio

<details>

* Version: 1.3.0
* Source code: https://github.com/cran/qtl2pleio
* URL: https://github.com/fboehm/qtl2pleio
* BugReports: https://github.com/fboehm/qtl2pleio/issues
* Date/Publication: 2020-06-30 19:00:02 UTC
* Number of recursive dependencies: 116

Run `revdep_details(, "qtl2pleio")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        libs   7.4Mb
    ```

# rainette

<details>

* Version: 0.1.1
* Source code: https://github.com/cran/rainette
* URL: https://juba.github.io/rainette/
* BugReports: https://github.com/juba/rainette/issues
* Date/Publication: 2020-05-09 12:00:03 UTC
* Number of recursive dependencies: 156

Run `revdep_details(, "rainette")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘vdiffr’
    ```

# rangeMapper

<details>

* Version: 0.3-7
* Source code: https://github.com/cran/rangeMapper
* URL: https://github.com/valcu/rangeMapper
* Date/Publication: 2019-10-25 18:20:02 UTC
* Number of recursive dependencies: 96

Run `revdep_details(, "rangeMapper")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
    ...
      > 
      > test_check("rangeMapper")
      ── 1. Error: MULTIPLE SpPolyDF-s WITH metadata (@test-2_processRanges.R#71)  ───
      Did you mean to create the future within a function?  Invalid future expression tries to use global '...' variables that do not exist: {; doFuture::registerDoFuture(); lapply(seq_along(...future.x_ii), FUN = function(jj) {; ...future.x_jj <- ...future.x_ii[[jj]]; i <- NULL; ...future.env <- environment(); ...; }, error = identity); }); }
      Backtrace:
       1. rangeMapper::processRanges(dir = wd, con = dbcon, metadata = rangeTraits())
       2. rangeMapper::processRanges(dir = wd, con = dbcon, metadata = rangeTraits())
       3. rangeMapper:::.local(con, dir = dir, metadata = metadata, parallel = parallel)
       4. `%dopar%`(...)
       5. e$fun(obj, substitute(ex), parent.frame(), e$data)
       6. doFuture:::getGlobalsAndPackages_doFuture(...)
       7. future::getGlobalsAndPackages(expr, envir = globals_envir, globals = TRUE)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 31 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: MULTIPLE SpPolyDF-s WITH metadata (@test-2_processRanges.R#71) 
      
      Error: testthat unit tests failed
      In addition: Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
    ```

# regmedint

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/regmedint
* URL: https://kaz-yos.github.io/regmedint/
* BugReports: https://github.com/kaz-yos/regmedint/issues
* Date/Publication: 2020-05-11 11:00:02 UTC
* Number of recursive dependencies: 106

Run `revdep_details(, "regmedint")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Deriv’
      All declared Imports should be used.
    ```

# robotstxt

<details>

* Version: 0.7.8
* Source code: https://github.com/cran/robotstxt
* URL: https://docs.ropensci.org/robotstxt, https://github.com/ropensci/robotstxt
* BugReports: https://github.com/ropensci/robotstxt/issues
* Date/Publication: 2020-07-25 21:30:08 UTC
* Number of recursive dependencies: 62

Run `revdep_details(, "robotstxt")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# sapfluxnetr

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/sapfluxnetr
* URL: https://github.com/sapfluxnet/sapfluxnetr
* BugReports: https://github.com/sapfluxnet/sapfluxnetr/issues
* Date/Publication: 2020-05-11 12:50:07 UTC
* Number of recursive dependencies: 73

Run `revdep_details(, "sapfluxnetr")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# SCtools

<details>

* Version: 0.3.0
* Source code: https://github.com/cran/SCtools
* BugReports: https://github.com/bcastanho/SCtools/issues
* Date/Publication: 2019-12-12 13:40:02 UTC
* Number of recursive dependencies: 84

Run `revdep_details(, "SCtools")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 27 marked UTF-8 strings
    ```

# seer

<details>

* Version: 1.1.5
* Source code: https://github.com/cran/seer
* Date/Publication: 2020-06-08 05:00:02 UTC
* Number of recursive dependencies: 107

Run `revdep_details(, "seer")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘MASS’
      All declared Imports should be used.
    ```

# Seurat

<details>

* Version: 3.2.0
* Source code: https://github.com/cran/Seurat
* URL: http://www.satijalab.org/seurat, https://github.com/satijalab/seurat
* BugReports: https://github.com/satijalab/seurat/issues
* Date/Publication: 2020-07-16 04:30:12 UTC
* Number of recursive dependencies: 224

Run `revdep_details(, "Seurat")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
        6. Seurat:::FindMarkers.default(...)
        7. Seurat:::GLMDETest(...)
        9. future.apply:::my.sapply(...)
       10. future.apply::future_lapply(X = X, FUN = FUN, ..., future.label = future.label)
       11. future.apply:::future_xapply(...)
       12. future.apply:::getGlobalsAndPackagesXApply(...)
       13. future::getGlobalsAndPackages(expr, envir = envir, globals = globals)
      
      ── 2. Error: (unknown) (@test_load_10X.R#34)  ──────────────────────────────────
      Please install hdf5r to read HDF5 files
      Backtrace:
       1. Seurat::Load10X_Spatial(data.dir = "../testdata/visium")
       2. Seurat::Read10X_h5(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 371 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 2 ]
      1. Error: (unknown) (@test_differential_expression.R#192) 
      2. Error: (unknown) (@test_load_10X.R#34) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘loomR’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
        libs   3.7Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘loomR’
    ```

# shiny

<details>

* Version: 1.5.0
* Source code: https://github.com/cran/shiny
* URL: http://shiny.rstudio.com
* BugReports: https://github.com/rstudio/shiny/issues
* Date/Publication: 2020-06-23 13:30:03 UTC
* Number of recursive dependencies: 96

Run `revdep_details(, "shiny")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ragg’
    ```

# shinyrecap

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/shinyrecap
* URL: https://fellstat.github.io/shinyrecap/
* Date/Publication: 2019-01-19 23:40:03 UTC
* Number of recursive dependencies: 87

Run `revdep_details(, "shinyrecap")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘CARE1’ ‘LCMCR’ ‘coda’ ‘conting’ ‘dga’ ‘future’ ‘ggplot2’ ‘ipc’
      ‘promises’ ‘reshape’ ‘shinycssloaders’ ‘testthat’
      All declared Imports should be used.
    ```

# Signac

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/Signac
* URL: https://github.com/timoast/signac, https://satijalab.org/signac
* BugReports: https://github.com/timoast/signac/issues
* Date/Publication: 2020-08-16 15:50:03 UTC
* Number of recursive dependencies: 227

Run `revdep_details(, "Signac")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      'Biobase' 'Rcpp' 'grid'
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘cicero’
    ```

# simhelpers

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/simhelpers
* URL: https://meghapsimatrix.github.io/simhelpers/index.html
* BugReports: https://github.com/meghapsimatrix/simhelpers/issues
* Date/Publication: 2020-03-31 15:00:06 UTC
* Number of recursive dependencies: 98

Run `revdep_details(, "simhelpers")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘magrittr’ ‘purrr’ ‘rlang’ ‘utils’
      All declared Imports should be used.
    ```

# skpr

<details>

* Version: 0.64.2
* Source code: https://github.com/cran/skpr
* URL: https://github.com/tylermorganwall/skpr
* BugReports: https://github.com/tylermorganwall/skpr/issues
* Date/Publication: 2020-03-04 20:20:02 UTC
* Number of recursive dependencies: 131

Run `revdep_details(, "skpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.6Mb
      sub-directories of 1Mb or more:
        libs  13.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘nlme’
      All declared Imports should be used.
    ```

# solitude

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/solitude
* URL: https://github.com/talegari/solitude
* BugReports: https://github.com/talegari/solitude/issues
* Date/Publication: 2020-07-07 09:20:02 UTC
* Number of recursive dependencies: 131

Run `revdep_details(, "solitude")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R6’ ‘lgr’
      All declared Imports should be used.
    ```

# spacey

<details>

* Version: 0.1.1
* Source code: https://github.com/cran/spacey
* URL: https://github.com/mikemahoney218/spacey, https://mikemahoney218.github.io/spacey/
* BugReports: https://github.com/mikemahoney218/spacey/issues
* Date/Publication: 2020-03-14 18:50:02 UTC
* Number of recursive dependencies: 90

Run `revdep_details(, "spacey")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rgdal’
      All declared Imports should be used.
    ```

# SpaDES.core

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/SpaDES.core
* URL: https://spades-core.predictiveecology.org/, https://github.com/PredictiveEcology/SpaDES.core
* BugReports: https://github.com/PredictiveEcology/SpaDES.core/issues
* Date/Publication: 2020-05-15 17:10:06 UTC
* Number of recursive dependencies: 154

Run `revdep_details(, "SpaDES.core")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'SpaDES.core-package.Rd':
      ‘[reproducible]{cache}’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

# spatialwarnings

<details>

* Version: 2.0.0
* Source code: https://github.com/cran/spatialwarnings
* URL: https://github.com/spatial-ews/spatialwarnings
* Date/Publication: 2020-05-14 17:10:06 UTC
* Number of recursive dependencies: 77

Run `revdep_details(, "spatialwarnings")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tidyr’
      All declared Imports should be used.
    ```

# sRACIPE

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/sRACIPE
* URL: https://vivekkohar.github.io/sRACIPE/, https://github.com/vivekkohar/sRACIPE, https://geneex.jax.org/
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 102

Run `revdep_details(, "sRACIPE")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    sracipeSimulate: no visible global function definition for
      ‘registerDoFuture’
    sracipeSimulate: no visible global function definition for ‘plan’
    sracipeSimulate: no visible global function definition for ‘%dopar%’
    sracipeSimulate: no visible global function definition for ‘foreach’
    sracipeSimulate: no visible binding for global variable
      ‘configurationTmp’
    sracipeSimulate: no visible binding for global variable ‘outFileGETmp’
    sracipeSimulate: no visible binding for global variable
      ‘outFileParamsTmp’
    sracipeSimulate: no visible binding for global variable ‘outFileICTmp’
    Undefined global functions or variables:
      %dopar% configurationTmp foreach outFileGETmp outFileICTmp
      outFileParamsTmp plan registerDoFuture
    ```

# stars

<details>

* Version: 0.4-3
* Source code: https://github.com/cran/stars
* URL: https://r-spatial.github.io/stars/, https://github.com/r-spatial/stars/
* BugReports: https://github.com/r-spatial/stars/issues/
* Date/Publication: 2020-07-08 11:20:03 UTC
* Number of recursive dependencies: 130

Run `revdep_details(, "stars")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'exactextractr', 'starsdata'
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘exactextractr’
    ```

# tableschema.r

<details>

* Version: 1.1.1
* Source code: https://github.com/cran/tableschema.r
* URL: https://github.com/frictionlessdata/tableschema-r
* BugReports: https://github.com/frictionlessdata/tableschema-r/issues
* Date/Publication: 2020-03-12 12:40:02 UTC
* Number of recursive dependencies: 57

Run `revdep_details(, "tableschema.r")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘iterators’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘parsedate’
    ```

# treeHMM

<details>

* Version: 0.1.1
* Source code: https://github.com/cran/treeHMM
* Date/Publication: 2019-12-12 17:10:02 UTC
* Number of recursive dependencies: 10

Run `revdep_details(, "treeHMM")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Matrix’
      All declared Imports should be used.
    ```

# tsibble

<details>

* Version: 0.9.2
* Source code: https://github.com/cran/tsibble
* URL: https://tsibble.tidyverts.org
* BugReports: https://github.com/tidyverts/tsibble/issues
* Date/Publication: 2020-07-24 10:40:02 UTC
* Number of recursive dependencies: 94

Run `revdep_details(, "tsibble")` for more info

</details>

## In both

*   checking S3 generic/method consistency ... WARNING
    ```
    Failed to query server: Connection timed out
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking replacement functions ... WARNING
    ```
    Failed to query server: Connection timed out
    The argument of a replacement function which corresponds to the right
    hand side must be named ‘value’.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Failed to query server: Connection timed out
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Failed to query server: Connection timed out
    Failed to query server: Connection timed out
    Failed to query server: Connection timed out
    ```

*   checking dependencies in R code ... NOTE
    ```
    Failed to query server: Connection timed out
    ```

*   checking foreign function calls ... NOTE
    ```
    Failed to query server: Connection timed out
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Failed to query server: Connection timed out
    ```

*   checking Rd \usage sections ... NOTE
    ```
    Failed to query server: Connection timed out
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# TSstudio

<details>

* Version: 0.1.6
* Source code: https://github.com/cran/TSstudio
* URL: https://github.com/RamiKrispin/TSstudio
* BugReports: https://github.com/RamiKrispin/TSstudio/issues
* Date/Publication: 2020-01-21 05:30:02 UTC
* Number of recursive dependencies: 136

Run `revdep_details(, "TSstudio")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Failed to query server: Connection timed out
    Namespace in Imports field not imported from: ‘forecastHybrid’
      All declared Imports should be used.
    ```

