# agcounts

<details>

* Version: 0.6.6
* GitHub: NA
* Source code: https://github.com/cran/agcounts
* Date/Publication: 2024-02-29 20:12:36 UTC
* Number of recursive dependencies: 166

Run `revdep_details(, "agcounts")` for more info

</details>

## In both

*   checking whether package ‘agcounts’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/agcounts/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/agcounts/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/agcounts/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/agcounts/new/agcounts.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        extdata   3.4Mb
        libs      3.0Mb
    ```

# AIPW

<details>

* Version: 0.6.3.2
* GitHub: https://github.com/yqzhong7/AIPW
* Source code: https://github.com/cran/AIPW
* Date/Publication: 2021-06-11 09:30:02 UTC
* Number of recursive dependencies: 100

Run `revdep_details(, "AIPW")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rsolnp’ ‘SuperLearner’ ‘future.apply’ ‘ggplot2’ ‘progressr’ ‘stats’
      ‘utils’
      All declared Imports should be used.
    ```

# AlpsNMR

<details>

* Version: 4.4.0
* GitHub: https://github.com/sipss/AlpsNMR
* Source code: https://github.com/cran/AlpsNMR
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 185

Run `revdep_details(, "AlpsNMR")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘Vig01-introduction-to-alpsnmr.Rmd’ using rmarkdown
    ! LuaTeX error .../texlive/texmf-dist/scripts/oberdiek/oberdiek.luatex.lua:55: b
    ad argument #1 to 'insert' (table expected, got nil)
    stack traceback:
    	[C]: in function 'insert'
    	.../texlive/texmf-dist/scripts/oberdiek/oberdiek.luatex.lua:55: in main chunk
    	[C]: in function 'dofile'
    	[string "\directlua "]:6: in main chunk.
    l.139   }
    ...
    LaTeX failed to compile /c4/home/henrik/repositories/globals/revdep/checks/AlpsNMR/new/AlpsNMR.Rcheck/vign_test/AlpsNMR/vignettes/Vig02-handling-metadata-and-annotations.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See Vig02-handling-metadata-and-annotations.log for more info.
    --- failed re-building ‘Vig02-handling-metadata-and-annotations.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘Vig01-introduction-to-alpsnmr.Rmd’
      ‘Vig01b-introduction-to-alpsnmr-old-api.Rmd’
      ‘Vig02-handling-metadata-and-annotations.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# altdoc

<details>

* Version: 0.3.0
* GitHub: https://github.com/etiennebacher/altdoc
* Source code: https://github.com/cran/altdoc
* Date/Publication: 2024-02-21 16:00:06 UTC
* Number of recursive dependencies: 85

Run `revdep_details(, "altdoc")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      v Setting active project to '<no active project>'
      v Setting active project to '/scratch/henrik/1701657/RtmpS2ZQsi/testpkg3b30f233c050d'
      v Setting active project to '<no active project>'
      v Setting active project to '/scratch/henrik/1701657/RtmpS2ZQsi/testpkg3b30f2ab089d5'
      v Setting active project to '<no active project>'
    ...
      Error in `render_docs(path = getwd())`: There were some failures when rendering vignettes.
      Backtrace:
          ▆
       1. └─altdoc::render_docs(path = getwd()) at test-update.R:111:5
       2.   └─cli::cli_abort("There were some failures when rendering vignettes.")
       3.     └─rlang::abort(...)
      
      [ FAIL 5 | WARN 0 | SKIP 7 | PASS 56 ]
      Error: Test failures
      Execution halted
    ```

# amapGeocode

<details>

* Version: 0.6.0
* GitHub: https://github.com/womeimingzi11/amapGeocode
* Source code: https://github.com/cran/amapGeocode
* Date/Publication: 2021-04-19 07:20:02 UTC
* Number of recursive dependencies: 79

Run `revdep_details(, "amapGeocode")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘jsonlite’
      All declared Imports should be used.
    ```

# aroma.core

<details>

* Version: 3.3.1
* GitHub: https://github.com/HenrikBengtsson/aroma.core
* Source code: https://github.com/cran/aroma.core
* Date/Publication: 2024-02-19 08:40:02 UTC
* Number of recursive dependencies: 68

Run `revdep_details(, "aroma.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

# BAMBI

<details>

* Version: 2.3.5
* GitHub: https://github.com/c7rishi/BAMBI
* Source code: https://github.com/cran/BAMBI
* Date/Publication: 2023-03-08 23:10:05 UTC
* Number of recursive dependencies: 53

Run `revdep_details(, "BAMBI")` for more info

</details>

## In both

*   checking whether package ‘BAMBI’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/BAMBI/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/BAMBI/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/BAMBI/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/BAMBI/new/BAMBI.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.3Mb
      sub-directories of 1Mb or more:
        libs   6.8Mb
    ```

# bamm

<details>

* Version: 0.4.3
* GitHub: https://github.com/luismurao/bamm
* Source code: https://github.com/cran/bamm
* Date/Publication: 2022-12-20 11:10:05 UTC
* Number of recursive dependencies: 109

Run `revdep_details(, "bamm")` for more info

</details>

## In both

*   checking whether package ‘bamm’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/bamm/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/bamm/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/bamm/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/bamm/new/bamm.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

# batchtools

<details>

* Version: 0.9.17
* GitHub: https://github.com/mllg/batchtools
* Source code: https://github.com/cran/batchtools
* Date/Publication: 2023-04-20 14:20:06 UTC
* Number of recursive dependencies: 83

Run `revdep_details(, "batchtools")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘doMPI’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Rmpi’
    ```

# bayesmove

<details>

* Version: 0.2.1
* GitHub: https://github.com/joshcullen/bayesmove
* Source code: https://github.com/cran/bayesmove
* Date/Publication: 2021-10-22 08:50:09 UTC
* Number of recursive dependencies: 168

Run `revdep_details(, "bayesmove")` for more info

</details>

## In both

*   checking whether package ‘bayesmove’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/bayesmove/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/bayesmove/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/bayesmove/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/bayesmove/new/bayesmove.Rcheck/00install.out’ for details.
    ```

# BEKKs

<details>

* Version: 1.4.4
* GitHub: NA
* Source code: https://github.com/cran/BEKKs
* Date/Publication: 2024-01-14 15:50:09 UTC
* Number of recursive dependencies: 86

Run `revdep_details(, "BEKKs")` for more info

</details>

## In both

*   checking whether package ‘BEKKs’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/BEKKs/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/BEKKs/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/BEKKs/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/BEKKs/new/BEKKs.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 18.5Mb
      sub-directories of 1Mb or more:
        libs  17.6Mb
    ```

# bigDM

<details>

* Version: 0.5.3
* GitHub: https://github.com/spatialstatisticsupna/bigDM
* Source code: https://github.com/cran/bigDM
* Date/Publication: 2023-10-17 12:50:02 UTC
* Number of recursive dependencies: 135

Run `revdep_details(, "bigDM")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘INLA’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 940 marked Latin-1 strings
    ```

# bistablehistory

<details>

* Version: 1.1.2
* GitHub: https://github.com/alexander-pastukhov/bistablehistory
* Source code: https://github.com/cran/bistablehistory
* Date/Publication: 2023-09-13 13:20:09 UTC
* Number of recursive dependencies: 97

Run `revdep_details(, "bistablehistory")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 75.5Mb
      sub-directories of 1Mb or more:
        libs  74.6Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# blavaan

<details>

* Version: 0.5-3
* GitHub: https://github.com/ecmerkle/blavaan
* Source code: https://github.com/cran/blavaan
* Date/Publication: 2024-01-19 22:50:02 UTC
* Number of recursive dependencies: 98

Run `revdep_details(, "blavaan")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 196.2Mb
      sub-directories of 1Mb or more:
        R           1.2Mb
        libs      193.4Mb
        testdata    1.4Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# BPrinStratTTE

<details>

* Version: 0.0.2
* GitHub: https://github.com/Boehringer-Ingelheim/BPrinStratTTE
* Source code: https://github.com/cran/BPrinStratTTE
* Date/Publication: 2023-12-20 16:40:07 UTC
* Number of recursive dependencies: 74

Run `revdep_details(, "BPrinStratTTE")` for more info

</details>

## In both

*   checking whether package ‘BPrinStratTTE’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/BPrinStratTTE/new/BPrinStratTTE.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘BPrinStratTTE’ ...
** package ‘BPrinStratTTE’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘BPrinStratTTE’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/BPrinStratTTE/new/BPrinStratTTE.Rcheck/BPrinStratTTE’


```
### CRAN

```
* installing *source* package ‘BPrinStratTTE’ ...
** package ‘BPrinStratTTE’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘BPrinStratTTE’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/BPrinStratTTE/old/BPrinStratTTE.Rcheck/BPrinStratTTE’


```
# brms

<details>

* Version: 2.20.4
* GitHub: https://github.com/paul-buerkner/brms
* Source code: https://github.com/cran/brms
* Date/Publication: 2023-09-25 19:00:09 UTC
* Number of recursive dependencies: 200

Run `revdep_details(, "brms")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        R     3.0Mb
        doc   3.5Mb
    ```

# broom.mixed

<details>

* Version: 0.2.9.4
* GitHub: https://github.com/bbolker/broom.mixed
* Source code: https://github.com/cran/broom.mixed
* Date/Publication: 2022-04-17 17:42:29 UTC
* Number of recursive dependencies: 166

Run `revdep_details(, "broom.mixed")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘glmmADMB’
    ```

# bsitar

<details>

* Version: 0.1.1
* GitHub: https://github.com/Sandhu-SS/bsitar
* Source code: https://github.com/cran/bsitar
* Date/Publication: 2024-01-25 13:50:09 UTC
* Number of recursive dependencies: 167

Run `revdep_details(, "bsitar")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        data   2.9Mb
        doc    1.3Mb
    ```

# ceRNAnetsim

<details>

* Version: 1.14.1
* GitHub: https://github.com/selcenari/ceRNAnetsim
* Source code: https://github.com/cran/ceRNAnetsim
* Date/Publication: 2023-12-18
* Number of recursive dependencies: 101

Run `revdep_details(, "ceRNAnetsim")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘ceRNAnetsim-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: find_node_perturbation
    > ### Title: Calculates average expression changes of all (or specified)
    > ###   nodes except trigger and finds the perturbed node count for all (or
    > ###   specified) nodes in system.
    > ### Aliases: find_node_perturbation
    > 
    > ### ** Examples
    ...
     23. │                 └─dplyr (local) eval()
     24. └─tidygraph::map_bfs(...)
     25.   └─tidygraph:::bfs_df(graph, root, mode, unreachable)
     26.     └─tibble::tibble(...)
     27.       └─tibble:::tibble_quos(xs, .rows, .name_repair)
     28.         └─tibble:::vectbl_recycle_rows(...)
     29.           └─tibble:::abort_incompatible_size(...)
     30.             └─tibble:::tibble_abort(...)
     31.               └─rlang::abort(x, class, ..., call = call, parent = parent, use_cli_format = TRUE)
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      > library(testthat)
      > library(ceRNAnetsim)
      Loading required package: dplyr
      
      Attaching package: 'dplyr'
      
    ...
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-iter_perturb.R:33:3'): Could the functions work?  ────────────
      `node_efficiencies` not equal to c(NA, NA, NA, 3.18, 2.27, 3.18, NA, 32).
      2/8 mismatches (average diff: 14.9)
      [5] 3.18 -  2.27 ==   0.91
      [8] 3.18 - 32.00 == -28.82
      
      [ FAIL 1 | WARN 35 | SKIP 0 | PASS 36 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘auxiliary_commands.Rmd’ using rmarkdown
    --- finished re-building ‘auxiliary_commands.Rmd’
    
    --- re-building ‘basic_usage.Rmd’ using rmarkdown
    --- finished re-building ‘basic_usage.Rmd’
    
    --- re-building ‘convenient_iteration.Rmd’ using rmarkdown
    
    Quitting from lines 226-233 [unnamed-chunk-15] (convenient_iteration.Rmd)
    ...
    • Size 5: Existing data.
    • Size 53: Column `rank`.
    ℹ Only values of size one are recycled.
    --- failed re-building ‘mirtarbase_example.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘convenient_iteration.Rmd’ ‘mirtarbase_example.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    simulate: no visible binding for global variable ‘avg_count_current’
    simulate: no visible binding for global variable ‘avg_count_pre’
    Undefined global functions or variables:
      avg_count_current avg_count_pre
    ```

# cft

<details>

* Version: 1.0.0
* GitHub: https://github.com/earthlab/cft-CRAN
* Source code: https://github.com/cran/cft
* Date/Publication: 2022-10-03 07:12:18 UTC
* Number of recursive dependencies: 90

Run `revdep_details(, "cft")` for more info

</details>

## In both

*   checking whether package ‘cft’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/cft/new/cft.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘cft’ ...
** package ‘cft’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘cft’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/cft/new/cft.Rcheck/cft’


```
### CRAN

```
* installing *source* package ‘cft’ ...
** package ‘cft’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘cft’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/cft/old/cft.Rcheck/cft’


```
# ChromSCape

<details>

* Version: 1.12.0
* GitHub: https://github.com/vallotlab/ChromSCape
* Source code: https://github.com/cran/ChromSCape
* Date/Publication: 2023-10-25
* Number of recursive dependencies: 232

Run `revdep_details(, "ChromSCape")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    'library' or 'require' call not declared from: ‘dplyr’
    'library' or 'require' call to ‘dplyr’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from documentation object 'generate_analysis':
    generate_analysis
      Code: function(input_data_folder, analysis_name = "Analysis_1",
                     output_directory = "./", input_data_type = c("scBED",
                     "DenseMatrix", "SparseMatrix", "scBAM")[1],
                     feature_count_on = c("bins", "genebody", "peaks")[1],
                     feature_count_parameter = 50000, rebin_sparse_matrix =
                     FALSE, ref_genome = c("hg38", "mm10")[1], run =
                     c("filter", "CNA", "cluster", "consensus", "coverage",
                     "DA", "GSA", "report")[c(1, 3, 5, 6, 7, 8)],
    ...
      Mismatches in argument names:
        Position: 5 Code: feature_count_on Docs: rebin_sparse_matrix
        Position: 6 Code: feature_count_parameter Docs: feature_count_on
        Position: 7 Code: rebin_sparse_matrix Docs: feature_count_parameter
      Mismatches in argument default values:
        Name: 'run'
        Code: c("filter", "CNA", "cluster", "consensus", "coverage", "DA", 
              "GSA", "report")[c(1, 3, 5, 6, 7, 8)]
        Docs: c("filter", "CNA", "cluster", "consensus", "peak_call", "coverage", 
              "DA", "GSA", "report")[c(1, 3, 6, 7, 8, 9)]
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'rebin_matrix'
      ‘rebin_function’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking examples ... WARNING
    ```
    Found the following significant warnings:
    
      Warning: 'as(<matrix>, "dspMatrix")' is deprecated.
    Deprecated functions may be defunct as soon as of the next release of
    R.
    See ?Deprecated.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.3Mb
      sub-directories of 1Mb or more:
        data   1.4Mb
        doc    2.9Mb
        libs   1.0Mb
        www    2.0Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    bams_to_matrix_indexes: no visible binding for global variable
      ‘files_dir_list’
    enrich_TF_ChEA3_genes: no visible binding for global variable
      ‘CheA3_TF_nTargets’
    filter_correlated_cell_scExp: no visible binding for global variable
      ‘run_tsne’
    generate_analysis: no visible global function definition for ‘head’
    generate_analysis: no visible binding for global variable ‘k’
    generate_analysis: no visible binding for global variable
      ‘clusterConsensus’
    ...
    subset_bam_call_peaks: no visible binding for global variable
      ‘merged_bam’
    Undefined global functions or variables:
      CheA3_TF_nTargets Component Fri_cyto Gain_or_Loss Gene TF V1 V2
      absolute_value cluster clusterConsensus cytoBand files_dir_list genes
      group head k merged_bam molecule ncells new_row orientation
      origin_value percent_active run_tsne sample_id total_counts
    Consider adding
      importFrom("utils", "head")
    to your NAMESPACE file.
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: raw_counts_to_sparse_matrix.Rd:6-8: Dropping empty section \source
    ```

# clickR

<details>

* Version: 0.9.39
* GitHub: NA
* Source code: https://github.com/cran/clickR
* Date/Publication: 2023-08-07 17:40:06 UTC
* Number of recursive dependencies: 9

Run `revdep_details(, "clickR")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# clustermq

<details>

* Version: 0.9.4
* GitHub: https://github.com/mschubert/clustermq
* Source code: https://github.com/cran/clustermq
* Date/Publication: 2024-03-04 15:20:10 UTC
* Number of recursive dependencies: 110

Run `revdep_details(, "clustermq")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 22.0Mb
      sub-directories of 1Mb or more:
        libs  21.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# codebook

<details>

* Version: 0.9.2
* GitHub: https://github.com/rubenarslan/codebook
* Source code: https://github.com/cran/codebook
* Date/Publication: 2020-06-06 23:40:03 UTC
* Number of recursive dependencies: 156

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

# collinear

<details>

* Version: 1.1.1
* GitHub: NA
* Source code: https://github.com/cran/collinear
* Date/Publication: 2023-12-08 08:50:02 UTC
* Number of recursive dependencies: 55

Run `revdep_details(, "collinear")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 89 marked Latin-1 strings
      Note: found 1203 marked UTF-8 strings
    ```

# colocr

<details>

* Version: 0.1.1
* GitHub: https://github.com/ropensci/colocr
* Source code: https://github.com/cran/colocr
* Date/Publication: 2020-05-08 13:20:06 UTC
* Number of recursive dependencies: 126

Run `revdep_details(, "colocr")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘imager’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# corporaexplorer

<details>

* Version: 0.8.6
* GitHub: https://github.com/kgjerde/corporaexplorer
* Source code: https://github.com/cran/corporaexplorer
* Date/Publication: 2022-06-20 12:50:02 UTC
* Number of recursive dependencies: 109

Run `revdep_details(, "corporaexplorer")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RColorBrewer’ ‘ggplot2’ ‘re2’ ‘rmarkdown’ ‘shinyWidgets’
      ‘shinydashboard’ ‘shinyjs’
      All declared Imports should be used.
    ```

# cSEM

<details>

* Version: 0.5.0
* GitHub: https://github.com/M-E-Rademaker/cSEM
* Source code: https://github.com/cran/cSEM
* Date/Publication: 2022-11-24 17:50:05 UTC
* Number of recursive dependencies: 128

Run `revdep_details(, "cSEM")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rdpack’
      All declared Imports should be used.
    ```

# CSGo

<details>

* Version: 0.6.7
* GitHub: https://github.com/adsoncostanzifilho/CSGo
* Source code: https://github.com/cran/CSGo
* Date/Publication: 2021-05-07 18:50:02 UTC
* Number of recursive dependencies: 77

Run `revdep_details(, "CSGo")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘extrafont’ ‘future’
      All declared Imports should be used.
    ```

# cuda.ml

<details>

* Version: 0.3.2
* GitHub: https://github.com/mlverse/cuda.ml
* Source code: https://github.com/cran/cuda.ml
* Date/Publication: 2022-01-08 01:42:47 UTC
* Number of recursive dependencies: 75

Run `revdep_details(, "cuda.ml")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        libs   5.8Mb
    ```

# cytomapper

<details>

* Version: 1.14.0
* GitHub: https://github.com/BodenmillerGroup/cytomapper
* Source code: https://github.com/cran/cytomapper
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 162

Run `revdep_details(, "cytomapper")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        R     1.3Mb
        doc   5.0Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘CATALYST’
    ```

# deseats

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/deseats
* Date/Publication: 2023-11-08 19:50:02 UTC
* Number of recursive dependencies: 109

Run `revdep_details(, "deseats")` for more info

</details>

## In both

*   checking whether package ‘deseats’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/deseats/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/deseats/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/deseats/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/deseats/new/deseats.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.3Mb
      sub-directories of 1Mb or more:
        libs   7.6Mb
    ```

# dipsaus

<details>

* Version: 0.2.8
* GitHub: https://github.com/dipterix/dipsaus
* Source code: https://github.com/cran/dipsaus
* Date/Publication: 2023-07-03 20:00:03 UTC
* Number of recursive dependencies: 70

Run `revdep_details(, "dipsaus")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        doc    1.1Mb
        libs   3.5Mb
    ```

# dispositionEffect

<details>

* Version: 1.0.1
* GitHub: https://github.com/marcozanotti/dispositionEffect
* Source code: https://github.com/cran/dispositionEffect
* Date/Publication: 2022-05-30 07:50:02 UTC
* Number of recursive dependencies: 136

Run `revdep_details(, "dispositionEffect")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      ── Failure ('test-realized_duration.R:113:2'): realized_duration works (realized_only = TRUE) ──
      realized_duration(...) not equal to c(...).
      1/4 mismatches
      [2] 34 - 28 == 6
      ── Failure ('test-realized_duration.R:116:2'): realized_duration works (realized_only = TRUE) ──
      realized_duration(...) not equal to c(...).
    ...
      1/4 mismatches
      [2] 34 - 28 == 6
      ── Failure ('test-realized_duration.R:161:2'): realized_duration works (realized_only = TRUE) ──
      realized_duration(...) not equal to c(...).
      1/4 mismatches
      [1] 34 - 28 == 6
      
      [ FAIL 36 | WARN 0 | SKIP 0 | PASS 331 ]
      Error: Test failures
      Execution halted
    ```

# dragon

<details>

* Version: 1.2.1
* GitHub: https://github.com/sjspielman/dragon
* Source code: https://github.com/cran/dragon
* Date/Publication: 2022-04-08 08:42:33 UTC
* Number of recursive dependencies: 131

Run `revdep_details(, "dragon")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(dragon)
      > 
      > test_check("dragon")
      Error in `FUN()`:
      ! In path: "/c4/home/henrik/repositories/globals/revdep/checks/dragon/new/dragon.Rcheck/tests/testthat/setup_test-settings.R"
    ...
       10. │                 └─testthat::source_file(path, env = env, chdir = chdir, wrap = wrap)
       11. │                   ├─base::withCallingHandlers(...)
       12. │                   └─base::eval(exprs, env)
       13. │                     └─base::eval(exprs, env)
       14. │                       └─igraph::read_graph("graph_by_redox.igraph", format = "ncol") at tests/testthat/setup_test-settings.R:8:1
       15. │                         └─igraph:::read.graph.ncol(file, ...)
       16. └─base::.handleSimpleError(...)
       17.   └─testthat (local) h(simpleError(msg, call))
       18.     └─rlang::abort(...)
      Execution halted
    ```

*   checking package subdirectories ... NOTE
    ```
    Problems with news in ‘NEWS.md’:
    No news entries found.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘htmltools’
      All declared Imports should be used.
    ```

# drake

<details>

* Version: 7.13.9
* GitHub: https://github.com/ropensci/drake
* Source code: https://github.com/cran/drake
* Date/Publication: 2024-03-04 15:20:02 UTC
* Number of recursive dependencies: 165

Run `revdep_details(, "drake")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘clustermq’
    ```

# DT

<details>

* Version: 0.32
* GitHub: https://github.com/rstudio/DT
* Source code: https://github.com/cran/DT
* Date/Publication: 2024-02-19 16:50:02 UTC
* Number of recursive dependencies: 53

Run `revdep_details(, "DT")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        htmlwidgets   4.8Mb
    ```

# EFAtools

<details>

* Version: 0.4.4
* GitHub: https://github.com/mdsteiner/EFAtools
* Source code: https://github.com/cran/EFAtools
* Date/Publication: 2023-01-06 14:50:40 UTC
* Number of recursive dependencies: 94

Run `revdep_details(, "EFAtools")` for more info

</details>

## In both

*   checking whether package ‘EFAtools’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/EFAtools/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/EFAtools/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/EFAtools/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/EFAtools/new/EFAtools.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        libs   6.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘progress’
      All declared Imports should be used.
    ```

# effectsize

<details>

* Version: 0.8.6
* GitHub: https://github.com/easystats/effectsize
* Source code: https://github.com/cran/effectsize
* Date/Publication: 2023-09-14 10:40:02 UTC
* Number of recursive dependencies: 192

Run `revdep_details(, "effectsize")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘see’
    ```

# envi

<details>

* Version: 0.1.19
* GitHub: https://github.com/lance-waller-lab/envi
* Source code: https://github.com/cran/envi
* Date/Publication: 2024-01-23 14:40:03 UTC
* Number of recursive dependencies: 153

Run `revdep_details(, "envi")` for more info

</details>

## In both

*   checking whether package ‘envi’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/envi/new/envi.Rcheck/00install.out’ for details.
    ```

# EpiNow2

<details>

* Version: 1.4.0
* GitHub: https://github.com/epiforecasts/EpiNow2
* Source code: https://github.com/cran/EpiNow2
* Date/Publication: 2023-09-26 12:00:02 UTC
* Number of recursive dependencies: 131

Run `revdep_details(, "EpiNow2")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 223.7Mb
      sub-directories of 1Mb or more:
        help    2.0Mb
        libs  220.8Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# epitweetr

<details>

* Version: 2.2.16
* GitHub: https://github.com/EU-ECDC/epitweetr
* Source code: https://github.com/cran/epitweetr
* Date/Publication: 2023-11-15 09:30:08 UTC
* Number of recursive dependencies: 149

Run `revdep_details(, "epitweetr")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘taskscheduleR’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘httpuv’ ‘knitr’ ‘plyr’ ‘tidyverse’ ‘xml2’
      All declared Imports should be used.
    ```

# epoxy

<details>

* Version: 1.0.0
* GitHub: https://github.com/gadenbuie/epoxy
* Source code: https://github.com/cran/epoxy
* Date/Publication: 2023-09-20 00:00:02 UTC
* Number of recursive dependencies: 94

Run `revdep_details(, "epoxy")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# erah

<details>

* Version: 2.0.1
* GitHub: https://github.com/xdomingoal/erah-devel
* Source code: https://github.com/cran/erah
* Date/Publication: 2023-12-20 10:10:02 UTC
* Number of recursive dependencies: 92

Run `revdep_details(, "erah")` for more info

</details>

## In both

*   checking whether package ‘erah’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/erah/new/erah.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ncdf4’
    ```

## Installation

### Devel

```
* installing *source* package ‘erah’ ...
** package ‘erah’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (GCC) 10.2.1 20210130 (Red Hat 10.2.1-11)’
gcc -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
gcc -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c runfunc.c -o runfunc.o
gcc -shared -L/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/lib -L/usr/local/lib64 -o erah.so registerDynamicSymbol.o runfunc.o -L/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/lib -lR
installing to /c4/home/henrik/repositories/globals/revdep/checks/erah/new/erah.Rcheck/00LOCK-erah/00new/erah/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘erah’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/erah/new/erah.Rcheck/erah’


```
### CRAN

```
* installing *source* package ‘erah’ ...
** package ‘erah’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (GCC) 10.2.1 20210130 (Red Hat 10.2.1-11)’
gcc -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
gcc -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c runfunc.c -o runfunc.o
gcc -shared -L/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/lib -L/usr/local/lib64 -o erah.so registerDynamicSymbol.o runfunc.o -L/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/lib -lR
installing to /c4/home/henrik/repositories/globals/revdep/checks/erah/old/erah.Rcheck/00LOCK-erah/00new/erah/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘erah’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/erah/old/erah.Rcheck/erah’


```
# evalITR

<details>

* Version: 1.0.0
* GitHub: https://github.com/MichaelLLi/evalITR
* Source code: https://github.com/cran/evalITR
* Date/Publication: 2023-08-25 23:10:06 UTC
* Number of recursive dependencies: 167

Run `revdep_details(, "evalITR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘forcats’ ‘rqPen’ ‘utils’
      All declared Imports should be used.
    ```

# fdacluster

<details>

* Version: 0.3.0
* GitHub: https://github.com/astamm/fdacluster
* Source code: https://github.com/cran/fdacluster
* Date/Publication: 2023-07-04 15:53:04 UTC
* Number of recursive dependencies: 118

Run `revdep_details(, "fdacluster")` for more info

</details>

## In both

*   checking whether package ‘fdacluster’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/fdacluster/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/fdacluster/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/fdacluster/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/fdacluster/new/fdacluster.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 22.2Mb
      sub-directories of 1Mb or more:
        R      1.8Mb
        doc    1.4Mb
        help   2.1Mb
        libs  16.4Mb
    ```

# fect

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/fect
* Date/Publication: 2022-10-14 09:52:32 UTC
* Number of recursive dependencies: 81

Run `revdep_details(, "fect")` for more info

</details>

## In both

*   checking whether package ‘fect’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/fect/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/fect/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/fect/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/fect/new/fect.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.9Mb
      sub-directories of 1Mb or more:
        libs  12.6Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘panelView’
      All declared Imports should be used.
    ```

# FLAMES

<details>

* Version: 1.8.0
* GitHub: https://github.com/OliverVoogd/FLAMES
* Source code: https://github.com/cran/FLAMES
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 255

Run `revdep_details(, "FLAMES")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking whether package ‘FLAMES’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/FLAMES/new/FLAMES.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        data   2.7Mb
        doc    1.7Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    annotation_to_fasta: no visible global function definition for
      'write.table'
    generate_sc_sce: no visible binding for global variable 'FSM_match'
    plot_coverage: no visible binding for global variable 'x'
    plot_coverage: no visible binding for global variable 'transcript'
    plot_coverage: no visible binding for global variable 'length_bin'
    plot_demultiplex: no visible binding for global variable 'Freq'
    plot_demultiplex: no visible binding for global variable '.'
    plot_demultiplex: no visible binding for global variable 'x'
    plot_demultiplex: no visible binding for global variable
    ...
    sc_umap_expression : plot_idx: no visible binding for global variable
      'y'
    transcript_coverage: no visible binding for global variable 'mat'
    Undefined global functions or variables:
      . BarcodeEditDist FSM_match FlankEditDist Freq all_vars cell_id cnt
      everything gene_id heatmap_annotation_colors label length_bin mat n
      name tr_id transcript transcript_id value write.table x y
    Consider adding
      importFrom("utils", "write.table")
    to your NAMESPACE file.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# flowGraph

<details>

* Version: 1.10.0
* GitHub: https://github.com/aya49/flowGraph
* Source code: https://github.com/cran/flowGraph
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 94

Run `revdep_details(, "flowGraph")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    get_child: no visible binding for global variable ‘no_cores’
    get_paren: no visible binding for global variable ‘no_cores’
    ms_psig: no visible binding for global variable ‘meta’
    Undefined global functions or variables:
      meta no_cores
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘doParallel’
    ```

# forecastML

<details>

* Version: 0.9.0
* GitHub: https://github.com/nredell/forecastML
* Source code: https://github.com/cran/forecastML
* Date/Publication: 2020-05-07 15:10:17 UTC
* Number of recursive dependencies: 105

Run `revdep_details(, "forecastML")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dtplyr’
      All declared Imports should be used.
    ```

# genBaRcode

<details>

* Version: 1.2.7
* GitHub: NA
* Source code: https://github.com/cran/genBaRcode
* Date/Publication: 2023-12-11 13:10:05 UTC
* Number of recursive dependencies: 160

Run `revdep_details(, "genBaRcode")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘genBaRcode_GUI_Vignette.Rmd’ using rmarkdown
    ! LaTeX Error: File `iftex.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'genBaRcode_GUI_Vignette.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/globals/revdep/checks/genBaRcode/new/genBaRcode.Rcheck/vign_test/genBaRcode/vignettes/genBaRcode_GUI_Vignette.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See genBaRcode_GUI_Vignette.log for more info.
    --- failed re-building ‘genBaRcode_GUI_Vignette.Rmd’
    ...
    
    Error: processing vignette 'genBaRcode_Vignette.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/globals/revdep/checks/genBaRcode/new/genBaRcode.Rcheck/vign_test/genBaRcode/vignettes/genBaRcode_Vignette.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See genBaRcode_Vignette.log for more info.
    --- failed re-building ‘genBaRcode_Vignette.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘genBaRcode_GUI_Vignette.Rmd’ ‘genBaRcode_Vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# geocmeans

<details>

* Version: 0.3.4
* GitHub: https://github.com/JeremyGelb/geocmeans
* Source code: https://github.com/cran/geocmeans
* Date/Publication: 2023-09-12 03:10:02 UTC
* Number of recursive dependencies: 197

Run `revdep_details(, "geocmeans")` for more info

</details>

## In both

*   checking whether package ‘geocmeans’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/geocmeans/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/geocmeans/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/geocmeans/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/geocmeans/new/geocmeans.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.5Mb
      sub-directories of 1Mb or more:
        extdata   3.0Mb
        libs      8.2Mb
    ```

# geospark

<details>

* Version: 0.3.1
* GitHub: https://github.com/harryprince/geospark
* Source code: https://github.com/cran/geospark
* Date/Publication: 2020-03-02 05:40:02 UTC
* Number of recursive dependencies: 60

Run `revdep_details(, "geospark")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dbplyr’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# googleComputeEngineR

<details>

* Version: 0.3.0
* GitHub: https://github.com/cloudyr/googleComputeEngineR
* Source code: https://github.com/cran/googleComputeEngineR
* Date/Publication: 2019-05-04 22:40:02 UTC
* Number of recursive dependencies: 67

Run `revdep_details(, "googleComputeEngineR")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# googleTagManageR

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/googleTagManageR
* Date/Publication: 2022-04-16 18:12:29 UTC
* Number of recursive dependencies: 69

Run `revdep_details(, "googleTagManageR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘assertthat’ ‘future’ ‘httr’
      All declared Imports should be used.
    ```

# grapesAgri1

<details>

* Version: 1.1.0
* GitHub: https://github.com/pratheesh3780/grapesAgri1
* Source code: https://github.com/cran/grapesAgri1
* Date/Publication: 2021-08-14 12:50:02 UTC
* Number of recursive dependencies: 166

Run `revdep_details(, "grapesAgri1")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Hmisc’ ‘PairedData’ ‘RColorBrewer’ ‘agricolae’ ‘corrplot’ ‘desplot’
      ‘dplyr’ ‘ggplot2’ ‘ggpubr’ ‘gridGraphics’ ‘gtools’ ‘kableExtra’
      ‘knitr’ ‘magrittr’ ‘pastecs’ ‘reshape2’ ‘rmarkdown’ ‘shinyWidgets’
      ‘summarytools’
      All declared Imports should be used.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) corrApp.Rd:40: Escaped LaTeX specials: \&
    checkRd: (-1) crdApp.Rd:46: Escaped LaTeX specials: \&
    checkRd: (-1) descApp.Rd:55: Escaped LaTeX specials: \&
    checkRd: (-1) layoutApp.Rd:50: Escaped LaTeX specials: \&
    checkRd: (-1) rbdApp.Rd:46: Escaped LaTeX specials: \&
    checkRd: (-1) ttApp.Rd:43: Escaped LaTeX specials: \&
    ```

# graphframes

<details>

* Version: 0.1.2
* GitHub: https://github.com/rstudio/graphframes
* Source code: https://github.com/cran/graphframes
* Date/Publication: 2018-10-30 19:20:03 UTC
* Number of recursive dependencies: 61

Run `revdep_details(, "graphframes")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# greed

<details>

* Version: 0.6.1
* GitHub: https://github.com/comeetie/greed
* Source code: https://github.com/cran/greed
* Date/Publication: 2022-10-03 22:00:05 UTC
* Number of recursive dependencies: 98

Run `revdep_details(, "greed")` for more info

</details>

## In both

*   checking whether package ‘greed’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/greed/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/greed/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/greed/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/greed/new/greed.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 36.5Mb
      sub-directories of 1Mb or more:
        libs  34.3Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 989 marked UTF-8 strings
    ```

# gsynth

<details>

* Version: 1.2.1
* GitHub: NA
* Source code: https://github.com/cran/gsynth
* Date/Publication: 2021-08-06 07:50:05 UTC
* Number of recursive dependencies: 77

Run `revdep_details(, "gsynth")` for more info

</details>

## In both

*   checking whether package ‘gsynth’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/gsynth/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/gsynth/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/gsynth/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/gsynth/new/gsynth.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        libs   4.9Mb
    ```

# hackeRnews

<details>

* Version: 0.1.0
* GitHub: https://github.com/szymanskir/hackeRnews
* Source code: https://github.com/cran/hackeRnews
* Date/Publication: 2019-12-13 13:20:05 UTC
* Number of recursive dependencies: 69

Run `revdep_details(, "hackeRnews")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# hal9001

<details>

* Version: 0.4.6
* GitHub: https://github.com/tlverse/hal9001
* Source code: https://github.com/cran/hal9001
* Date/Publication: 2023-11-14 15:00:02 UTC
* Number of recursive dependencies: 100

Run `revdep_details(, "hal9001")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        libs   4.9Mb
    ```

# hbamr

<details>

* Version: 2.2.1
* GitHub: https://github.com/jbolstad/hbamr
* Source code: https://github.com/cran/hbamr
* Date/Publication: 2024-02-23 12:30:02 UTC
* Number of recursive dependencies: 91

Run `revdep_details(, "hbamr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 353.1Mb
      sub-directories of 1Mb or more:
        libs  351.6Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# healthyR.ts

<details>

* Version: 0.3.0
* GitHub: https://github.com/spsanderson/healthyR.ts
* Source code: https://github.com/cran/healthyR.ts
* Date/Publication: 2023-11-15 06:00:05 UTC
* Number of recursive dependencies: 221

Run `revdep_details(, "healthyR.ts")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        doc   5.2Mb
    ```

# hero

<details>

* Version: 0.6
* GitHub: NA
* Source code: https://github.com/cran/hero
* Date/Publication: 2023-07-15 21:10:09 UTC
* Number of recursive dependencies: 160

Run `revdep_details(, "hero")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Rmpi’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Rmpi’
    ```

# heterogen

<details>

* Version: 1.2.33
* GitHub: https://github.com/patauchi/heterogen
* Source code: https://github.com/cran/heterogen
* Date/Publication: 2023-08-17 07:42:33 UTC
* Number of recursive dependencies: 56

Run `revdep_details(, "heterogen")` for more info

</details>

## In both

*   checking whether package ‘heterogen’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/heterogen/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/heterogen/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/heterogen/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/heterogen/new/heterogen.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        extdata   2.5Mb
        libs      6.0Mb
    ```

# historicalborrowlong

<details>

* Version: 0.0.8
* GitHub: https://github.com/wlandau/historicalborrowlong
* Source code: https://github.com/cran/historicalborrowlong
* Date/Publication: 2023-11-30 08:00:07 UTC
* Number of recursive dependencies: 110

Run `revdep_details(, "historicalborrowlong")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘clustermq’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# hwep

<details>

* Version: 2.0.2
* GitHub: https://github.com/dcgerard/hwep
* Source code: https://github.com/cran/hwep
* Date/Publication: 2023-05-16 17:40:02 UTC
* Number of recursive dependencies: 116

Run `revdep_details(, "hwep")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 84.5Mb
      sub-directories of 1Mb or more:
        libs  83.9Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# infercnv

<details>

* Version: 1.18.1
* GitHub: https://github.com/broadinstitute/inferCNV
* Source code: https://github.com/cran/infercnv
* Date/Publication: 2023-12-01
* Number of recursive dependencies: 204

Run `revdep_details(, "infercnv")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        extdata   3.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘HiddenMarkov:::makedensity’
      See the note in ?`:::` about the use of this operator.
    ```

# InPAS

<details>

* Version: 2.10.0
* GitHub: NA
* Source code: https://github.com/cran/InPAS
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 172

Run `revdep_details(, "InPAS")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘adjust_distalCPs’ ‘adjust_proximalCPs’ ‘adjust_proximalCPsByNBC’
      ‘adjust_proximalCPsByPWM’ ‘calculate_mse’ ‘find_valleyBySpline’
      ‘get_PAscore’ ‘get_PAscore2’ ‘remove_convergentUTR3s’
      ‘search_distalCPs’ ‘search_proximalCPs’
    ```

# interflex

<details>

* Version: 1.2.6
* GitHub: NA
* Source code: https://github.com/cran/interflex
* Date/Publication: 2021-05-18 11:40:02 UTC
* Number of recursive dependencies: 103

Run `revdep_details(, "interflex")` for more info

</details>

## In both

*   checking whether package ‘interflex’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/interflex/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/interflex/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/interflex/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/interflex/new/interflex.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        libs   5.1Mb
    ```

# ISAnalytics

<details>

* Version: 1.12.0
* GitHub: https://github.com/calabrialab/ISAnalytics
* Source code: https://github.com/cran/ISAnalytics
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 173

Run `revdep_details(, "ISAnalytics")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        data   1.4Mb
        doc    3.5Mb
    ```

# ivmte

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/ivmte
* Date/Publication: 2021-09-17 12:20:07 UTC
* Number of recursive dependencies: 112

Run `revdep_details(, "ivmte")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'gurobi', 'cplexAPI'
    ```

# keyATM

<details>

* Version: 0.5.1
* GitHub: https://github.com/keyATM/keyATM
* Source code: https://github.com/cran/keyATM
* Date/Publication: 2024-02-04 23:30:02 UTC
* Number of recursive dependencies: 107

Run `revdep_details(, "keyATM")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 24.7Mb
      sub-directories of 1Mb or more:
        libs  24.3Mb
    ```

# ldsr

<details>

* Version: 0.0.2
* GitHub: https://github.com/ntthung/ldsr
* Source code: https://github.com/cran/ldsr
* Date/Publication: 2020-05-04 14:40:09 UTC
* Number of recursive dependencies: 78

Run `revdep_details(, "ldsr")` for more info

</details>

## In both

*   checking whether package ‘ldsr’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/ldsr/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/ldsr/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/ldsr/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/ldsr/new/ldsr.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

# leafdown

<details>

* Version: 1.2.0
* GitHub: NA
* Source code: https://github.com/cran/leafdown
* Date/Publication: 2022-09-19 06:06:11 UTC
* Number of recursive dependencies: 133

Run `revdep_details(, "leafdown")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 75 marked UTF-8 strings
    ```

# lidR

<details>

* Version: 4.1.1
* GitHub: https://github.com/r-lidar/lidR
* Source code: https://github.com/cran/lidR
* Date/Publication: 2024-03-05 17:00:11 UTC
* Number of recursive dependencies: 156

Run `revdep_details(, "lidR")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/bin/BATCH: line 60: 39355 Aborted                 (core dumped) ${R_HOME}/bin/R -f ${in} ${opts} ${R_BATCH_OPTIONS} > ${out} 2>&1
    
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > Sys.setenv("R_TESTS" = "")
      > 
      > library(testthat)
      > library(lidR)
      > test_check("lidR")
      Tests using raster: terra 
      Tests using future: TRUE 
      Tests using OpenMP thread: 32 
      OGR: Unsupported geometry type
      OGR: Unsupported geometry type
      Chunk 1 of 1 (100%): state ✓
      terminate called after throwing an instance of 'std::length_error'
        what():  basic_string::_S_create
    ```

*   checking whether package ‘lidR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/lidR/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/lidR/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/lidR/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/lidR/new/lidR.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 20.0Mb
      sub-directories of 1Mb or more:
        R         1.0Mb
        extdata   1.1Mb
        libs     16.3Mb
    ```

# MAI

<details>

* Version: 1.8.0
* GitHub: https://github.com/KechrisLab/MAI
* Source code: https://github.com/cran/MAI
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 176

Run `revdep_details(, "MAI")` for more info

</details>

## In both

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

# manynet

<details>

* Version: 0.4.1
* GitHub: https://github.com/stocnet/manynet
* Source code: https://github.com/cran/manynet
* Date/Publication: 2024-01-24 23:10:06 UTC
* Number of recursive dependencies: 142

Run `revdep_details(, "manynet")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘Rgraphviz’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 7 marked UTF-8 strings
    ```

# metabolomicsR

<details>

* Version: 1.0.0
* GitHub: https://github.com/XikunHan/metabolomicsR
* Source code: https://github.com/cran/metabolomicsR
* Date/Publication: 2022-04-29 07:40:02 UTC
* Number of recursive dependencies: 182

Run `revdep_details(, "metabolomicsR")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    Missing or unexported object: ‘future::multiprocess’
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘genuMet’
    ```

# metaGE

<details>

* Version: 1.0.3
* GitHub: NA
* Source code: https://github.com/cran/metaGE
* Date/Publication: 2023-09-28 08:50:02 UTC
* Number of recursive dependencies: 149

Run `revdep_details(, "metaGE")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        data   4.2Mb
    ```

# microservices

<details>

* Version: 0.2.0
* GitHub: https://github.com/tidylab/microservices
* Source code: https://github.com/cran/microservices
* Date/Publication: 2022-10-01 09:50:02 UTC
* Number of recursive dependencies: 72

Run `revdep_details(, "microservices")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(microservices)
      > test_check("microservices")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 12 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. ├─config::get(...) at test-endpoint-plumber-{route_name}.R:2:1
       2. │ └─base::normalizePath(file, mustWork = FALSE)
       3. │   └─base::path.expand(path)
       4. └─base::system.file(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 12 ]
      Error: Test failures
      Execution halted
    ```

# MineICA

<details>

* Version: 1.42.0
* GitHub: NA
* Source code: https://github.com/cran/MineICA
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 216

Run `revdep_details(, "MineICA")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    Namespace in Imports field not imported from: ‘lumiHumanAll.db’
      All declared Imports should be used.
    Packages in Depends field not imported from:
      ‘GOstats’ ‘Hmisc’ ‘JADE’ ‘RColorBrewer’ ‘Rgraphviz’ ‘annotate’
      ‘biomaRt’ ‘cluster’ ‘colorspace’ ‘fastICA’ ‘foreach’ ‘ggplot2’
      ‘graph’ ‘gtools’ ‘igraph’ ‘marray’ ‘mclust’ ‘methods’ ‘plyr’ ‘scales’
      ‘xtable’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Missing or unexported object: ‘GOstats::geneIdsByCategory’
    ':::' calls which should be '::':
      ‘Biobase:::annotation<-’ ‘Biobase:::validMsg’ ‘fpc:::pamk’
      ‘lumi:::getChipInfo’ ‘mclust:::adjustedRandIndex’
      See the note in ?`:::` about the use of this operator.
    Unexported object imported by a ':::' call: ‘Biobase:::isValidVersion’
      See the note in ?`:::` about the use of this operator.
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

*   checking R code for possible problems ... NOTE
    ```
    addGenesToGoReport: no visible global function definition for
      ‘conditional’
    addGenesToGoReport: no visible global function definition for
      ‘sigCategories’
    annot2Color: no visible global function definition for ‘brewer.pal’
    annot2Color: no visible global function definition for ‘heat_hcl’
    annot2Color: no visible global function definition for ‘terrain_hcl’
    annot2Color: no visible global function definition for ‘cm.colors’
    annot2Color: no visible global function definition for ‘rainbow_hcl’
    annotFeatures: no visible global function definition for ‘na.omit’
    ...
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

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘MineICA.Rnw’ using Sweave
    Loading required package: BiocGenerics
    
    Attaching package: ‘BiocGenerics’
    
    The following objects are masked from ‘package:stats’:
    
        IQR, mad, sd, var, xtabs
    
    ...
    l.23 \usepackage
                    {subfig}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘MineICA.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘MineICA.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# missSBM

<details>

* Version: 1.0.4
* GitHub: https://github.com/grossSBM/missSBM
* Source code: https://github.com/cran/missSBM
* Date/Publication: 2023-10-24 16:00:05 UTC
* Number of recursive dependencies: 114

Run `revdep_details(, "missSBM")` for more info

</details>

## In both

*   checking whether package ‘missSBM’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/missSBM/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/missSBM/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/missSBM/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/missSBM/new/missSBM.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.8Mb
      sub-directories of 1Mb or more:
        libs   7.8Mb
    ```

# mistyR

<details>

* Version: 1.10.0
* GitHub: https://github.com/saezlab/mistyR
* Source code: https://github.com/cran/mistyR
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 155

Run `revdep_details(, "mistyR")` for more info

</details>

## Newly fixed

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      
      Collecting contributions
      
      Collecting importances
      
      Aggregating
    ...
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-misty.R:212:3'): k for cv , n.bags for bagging can be changed and approx works ──
      first.run < second.run is not TRUE
      
      `actual`:   FALSE
      `expected`: TRUE 
      
      [ FAIL 1 | WARN 4 | SKIP 0 | PASS 172 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking R code for possible problems ... NOTE
    ```
    aggregate_results: no visible binding for global variable ‘measure’
    aggregate_results: no visible binding for global variable ‘target’
    aggregate_results: no visible binding for global variable ‘value’
    aggregate_results: no visible binding for global variable ‘sd’
    aggregate_results: no visible binding for global variable ‘view’
    aggregate_results: no visible binding for global variable ‘.PT’
    aggregate_results: no visible binding for global variable ‘Importance’
    aggregate_results_subset: no visible binding for global variable ‘view’
    aggregate_results_subset: no visible binding for global variable ‘.PT’
    aggregate_results_subset: no visible binding for global variable
    ...
    run_misty : <anonymous>: no visible binding for global variable
      ‘multi.R2’
    svm_model: no visible binding for global variable ‘index’
    Undefined global functions or variables:
      .PT Importance Predictor Target fraction index intra.R2 intra.RMSE
      measure multi.R2 multi.RMSE nsamples p prediction sd target total ts
      value view
    Consider adding
      importFrom("stats", "sd", "ts")
    to your NAMESPACE file.
    ```

# MLDataR

<details>

* Version: 1.0.1
* GitHub: https://github.com/StatsGary/MLDataR
* Source code: https://github.com/cran/MLDataR
* Date/Publication: 2022-10-03 15:10:02 UTC
* Number of recursive dependencies: 126

Run `revdep_details(, "MLDataR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ConfusionTableR’ ‘OddsPlotty’ ‘caret’ ‘dplyr’ ‘ggplot2’ ‘parsnip’
      ‘ranger’ ‘recipes’ ‘rsample’ ‘varhandle’ ‘workflows’
      All declared Imports should be used.
    ```

# mlr3shiny

<details>

* Version: 0.3.0
* GitHub: NA
* Source code: https://github.com/cran/mlr3shiny
* Date/Publication: 2023-09-30 20:30:05 UTC
* Number of recursive dependencies: 179

Run `revdep_details(, "mlr3shiny")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DT’ ‘Metrics’ ‘data.table’ ‘dplyr’ ‘mlr3’ ‘mlr3learners’
      ‘mlr3measures’ ‘mlr3pipelines’ ‘patchwork’ ‘plyr’ ‘purrr’
      ‘shinyWidgets’ ‘shinyalert’ ‘shinydashboard’ ‘shinyjs’ ‘stats’
      ‘stringr’
      All declared Imports should be used.
    ```

# mmaqshiny

<details>

* Version: 1.0.0
* GitHub: https://github.com/meenakshi-kushwaha/mmaqshiny
* Source code: https://github.com/cran/mmaqshiny
* Date/Publication: 2020-06-26 16:00:23 UTC
* Number of recursive dependencies: 145

Run `revdep_details(, "mmaqshiny")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 15.5Mb
      sub-directories of 1Mb or more:
        images   1.0Mb
        shiny   14.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Cairo’ ‘DT’ ‘XML’ ‘caTools’ ‘data.table’ ‘dplyr’ ‘ggplot2’
      ‘htmltools’ ‘leaflet’ ‘lubridate’ ‘plotly’ ‘shinyjs’ ‘stringr’ ‘xts’
      ‘zoo’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# mmrm

<details>

* Version: 0.3.11
* GitHub: https://github.com/openpharma/mmrm
* Source code: https://github.com/cran/mmrm
* Date/Publication: 2024-03-05 08:10:02 UTC
* Number of recursive dependencies: 158

Run `revdep_details(, "mmrm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 198.1Mb
      sub-directories of 1Mb or more:
        libs  196.4Mb
    ```

# modeltime

<details>

* Version: 1.2.8
* GitHub: https://github.com/business-science/modeltime
* Source code: https://github.com/cran/modeltime
* Date/Publication: 2023-09-02 15:10:02 UTC
* Number of recursive dependencies: 252

Run `revdep_details(, "modeltime")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘tidymodels’ ‘tidyverse’
      All declared Imports should be used.
    ```

# modeltime.ensemble

<details>

* Version: 1.0.3
* GitHub: https://github.com/business-science/modeltime.ensemble
* Source code: https://github.com/cran/modeltime.ensemble
* Date/Publication: 2023-04-18 11:50:02 UTC
* Number of recursive dependencies: 229

Run `revdep_details(, "modeltime.ensemble")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘parsnip’
      All declared Imports should be used.
    ```

# modeltime.resample

<details>

* Version: 0.2.3
* GitHub: https://github.com/business-science/modeltime.resample
* Source code: https://github.com/cran/modeltime.resample
* Date/Publication: 2023-04-12 15:50:02 UTC
* Number of recursive dependencies: 228

Run `revdep_details(, "modeltime.resample")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘crayon’ ‘dials’ ‘glue’ ‘parsnip’
      All declared Imports should be used.
    ```

# momentuHMM

<details>

* Version: 1.5.5
* GitHub: https://github.com/bmcclintock/momentuHMM
* Source code: https://github.com/cran/momentuHMM
* Date/Publication: 2022-10-18 20:52:35 UTC
* Number of recursive dependencies: 145

Run `revdep_details(, "momentuHMM")` for more info

</details>

## In both

*   checking whether package ‘momentuHMM’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/momentuHMM/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/momentuHMM/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/momentuHMM/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/momentuHMM/new/momentuHMM.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.2Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
        doc    1.7Mb
        libs   6.7Mb
    ```

# MOSS

<details>

* Version: 0.2.2
* GitHub: https://github.com/agugonrey/MOSS
* Source code: https://github.com/cran/MOSS
* Date/Publication: 2022-03-25 15:50:05 UTC
* Number of recursive dependencies: 182

Run `revdep_details(, "MOSS")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘MOSS_working_example.Rmd’ using rmarkdown
    ! LaTeX Error: File `iftex.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'MOSS_working_example.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/globals/revdep/checks/MOSS/new/MOSS.Rcheck/vign_test/MOSS/vignettes/MOSS_working_example.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See MOSS_working_example.log for more info.
    --- failed re-building ‘MOSS_working_example.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘MOSS_working_example.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# MSstatsBig

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/MSstatsBig
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 128

Run `revdep_details(, "MSstatsBig")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    MSstatsPreprocessBig: no visible binding for global variable ‘input’
    MSstatsPreprocessBigArrow: no visible binding for global variable
      ‘PeptideSequence’
    MSstatsPreprocessBigArrow: no visible binding for global variable
      ‘PrecursorCharge’
    MSstatsPreprocessBigArrow: no visible binding for global variable
      ‘FragmentIon’
    MSstatsPreprocessBigArrow: no visible binding for global variable
      ‘ProductCharge’
    MSstatsPreprocessBigArrow: no visible binding for global variable
    ...
    cleanSpectronautChunk: no visible binding for global variable
      ‘BioReplicate’
    cleanSpectronautChunk: no visible binding for global variable
      ‘Condition’
    Undefined global functions or variables:
      %>% := BioReplicate Condition EGQvalue Excluded FFrgLossType Feature
      FragmentIon Identified Intensity IsLabeled IsotopeLabelType
      LabeledSequence MeanAbundance NumObs NumProteins PGQvalue
      PeptideSequence PrecursorCharge ProductCharge ProteinName Rank Run
      all_of feature_rank if_else input min_rank n_distinct tbl
    ```

# MSstatsShiny

<details>

* Version: 1.4.3
* GitHub: https://github.com/Vitek-Lab/MSstatsShiny
* Source code: https://github.com/cran/MSstatsShiny
* Date/Publication: 2024-03-04
* Number of recursive dependencies: 155

Run `revdep_details(, "MSstatsShiny")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘MSstatsTMT:::.logSum’ ‘MSstatsTMT:::.summarizeSimpleStat’
      ‘MSstatsTMT:::.summarizeTMP’
      ‘MSstatsTMT:::MSstatsFitComparisonModelsTMT’
      ‘MSstatsTMT:::MSstatsGroupComparisonOutputTMT’
      ‘MSstatsTMT:::MSstatsModerateTTest’
      ‘MSstatsTMT:::MSstatsNormalizeTMT’
      ‘MSstatsTMT:::MSstatsPrepareForGroupComparisonTMT’
      ‘MSstatsTMT:::MSstatsPrepareForSummarizationTMT’
      ‘MSstatsTMT:::MSstatsSummarizationOutputTMT’
      ‘MSstatsTMT:::MSstatsTestSingleProteinTMT’
      ‘MSstatsTMT:::getProcessedTMT’ ‘MSstatsTMT:::getSummarizedTMT’
      ‘shinyBS:::buildTooltipOrPopoverOptionsList’ ‘shinyBS:::shinyBSDep’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    getAnnot: no visible binding for global variable ‘annotation.pd’
    getSummary1: no visible binding for global variable ‘Condition’
    getSummary1: no visible binding for global variable ‘BioReplicate’
    getSummary1: no visible binding for global variable ‘Mixture’
    getSummary1: no visible binding for global variable ‘Run’
    getSummary1: no visible binding for global variable ‘TechRepMixture’
    getSummary1: no visible binding for global variable ‘Fraction’
    getSummary1: no visible binding for global variable ‘Condition_Run’
    getSummary1: no visible binding for global variable ‘BioReplicate_Run’
    getSummary1: no visible binding for global variable ‘Number of
    ...
    server: no visible global function definition for ‘callModule’
    statmodelServer: no visible global function definition for
      ‘updateNumericInput’
    Undefined global functions or variables:
      BioReplicate BioReplicate_Run Charge Condition Condition_Run FEATURES
      Features_Peptides_max Features_Peptides_min Fraction FragmentIon
      Intensity Max_Intensity Min_Intensity Mixture Number of Fractions
      PeptideSequence Peptides_Proteins_max Peptides_Proteins_min
      PrecursorCharge ProductCharge ProteinName Run TechRepMixture
      annotation.pd callModule moduleServer nfea npep updateNumericInput
    ```

# MtreeRing

<details>

* Version: 1.4.5
* GitHub: https://github.com/ropensci/MtreeRing
* Source code: https://github.com/cran/MtreeRing
* Date/Publication: 2021-04-19 22:10:06 UTC
* Number of recursive dependencies: 115

Run `revdep_details(, "MtreeRing")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘imager’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# mvrsquared

<details>

* Version: 0.1.5
* GitHub: https://github.com/TommyJones/mvrsquared
* Source code: https://github.com/cran/mvrsquared
* Date/Publication: 2023-07-15 00:10:02 UTC
* Number of recursive dependencies: 91

Run `revdep_details(, "mvrsquared")` for more info

</details>

## In both

*   checking whether package ‘mvrsquared’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/mvrsquared/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/mvrsquared/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/mvrsquared/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/mvrsquared/new/mvrsquared.Rcheck/00install.out’ for details.
    ```

# nebula

<details>

* Version: 1.5.3
* GitHub: https://github.com/lhe17/nebula
* Source code: https://github.com/cran/nebula
* Date/Publication: 2024-02-15 23:00:02 UTC
* Number of recursive dependencies: 184

Run `revdep_details(, "nebula")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 37.4Mb
      sub-directories of 1Mb or more:
        libs  35.9Mb
    ```

# nevada

<details>

* Version: 0.2.0
* GitHub: https://github.com/astamm/nevada
* Source code: https://github.com/cran/nevada
* Date/Publication: 2023-09-03 21:00:02 UTC
* Number of recursive dependencies: 108

Run `revdep_details(, "nevada")` for more info

</details>

## In both

*   checking whether package ‘nevada’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/nevada/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/nevada/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/nevada/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/nevada/new/nevada.Rcheck/00install.out’ for details.
    ```

# nfl4th

<details>

* Version: 1.0.4
* GitHub: https://github.com/nflverse/nfl4th
* Source code: https://github.com/cran/nfl4th
* Date/Publication: 2023-08-21 09:32:33 UTC
* Number of recursive dependencies: 111

Run `revdep_details(, "nfl4th")` for more info

</details>

## In both

*   checking whether package ‘nfl4th’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: GitHub.com seems offline, and `options(nfl4th.keep_games)` is not set to TRUE. Deleting the games cache, and predictions may not be available without an internet connection.
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/nfl4th/new/nfl4th.Rcheck/00install.out’ for details.
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: GitHub.com seems offline, and `options(nfl4th.keep_games)` is not set to TRUE. Deleting the games cache, and predictions may not be available without an internet connection.
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

# occupationMeasurement

<details>

* Version: 0.3.2
* GitHub: https://github.com/occupationMeasurement/occupationMeasurement
* Source code: https://github.com/cran/occupationMeasurement
* Date/Publication: 2023-09-27 13:40:02 UTC
* Number of recursive dependencies: 126

Run `revdep_details(, "occupationMeasurement")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 6986 marked UTF-8 strings
    ```

# oncomsm

<details>

* Version: 0.1.4
* GitHub: https://github.com/Boehringer-Ingelheim/oncomsm
* Source code: https://github.com/cran/oncomsm
* Date/Publication: 2023-04-17 07:00:02 UTC
* Number of recursive dependencies: 127

Run `revdep_details(, "oncomsm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 67.6Mb
      sub-directories of 1Mb or more:
        doc    1.0Mb
        libs  65.5Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# onemapsgapi

<details>

* Version: 1.1.0
* GitHub: NA
* Source code: https://github.com/cran/onemapsgapi
* Date/Publication: 2022-11-29 08:00:03 UTC
* Number of recursive dependencies: 71

Run `revdep_details(, "onemapsgapi")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘onemapsgapi_vignette.Rmd’ using rmarkdown
    
    Quitting from lines 36-37 [unnamed-chunk-4] (onemapsgapi_vignette.Rmd)
    Error: processing vignette 'onemapsgapi_vignette.Rmd' failed with diagnostics:
    Peer certificate cannot be authenticated with given CA certificates: [developers.onemap.sg] Peer's Certificate has expired.
    --- failed re-building ‘onemapsgapi_vignette.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘onemapsgapi_vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# OOS

<details>

* Version: 1.0.0
* GitHub: https://github.com/tylerJPike/OOS
* Source code: https://github.com/cran/OOS
* Date/Publication: 2021-03-17 13:20:20 UTC
* Number of recursive dependencies: 137

Run `revdep_details(, "OOS")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# pareg

<details>

* Version: 1.6.0
* GitHub: https://github.com/cbg-ethz/pareg
* Source code: https://github.com/cran/pareg
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 320

Run `revdep_details(, "pareg")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘pareg-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: as.data.frame.pareg
    > ### Title: as.data.frame for an object of class 'pareg'.
    > ### Aliases: as.data.frame.pareg
    > 
    > ### ** Examples
    > 
    > df_genes <- data.frame(
    ...
    + )
    > fit <- pareg(df_genes, df_terms, max_iterations = 10)
    Error in py_module_import(module, convert = convert) : 
      ImportError: /lib64/libstdc++.so.6: version `CXXABI_1.3.9' not found (required by /c4/home/henrik/.cache/R/basilisk/1.14.3/pareg/1.6.0/pareg/lib/python3.9/site-packages/tensorflow/python/platform/_pywrap_cpu_feature_guard.so)
    Run `reticulate::py_last_error()` for details.
    Error in .activate_fallback(proc, testload, env = env, envpath = envpath,  : 
      ImportError: /lib64/libstdc++.so.6: version `CXXABI_1.3.9' not found (required by /c4/home/henrik/.cache/R/basilisk/1.14.3/pareg/1.6.0/pareg/lib/python3.9/site-packages/tensorflow/python/platform/_pywrap_cpu_feature_guard.so)
    Run `reticulate::py_last_error()` for details.
    Calls: pareg -> basiliskStart -> .activate_fallback
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(pareg)
      Loading required package: tensorflow
      Loading required package: tfprobability
      
      
    ...
      +   testload = c("tensorflow", "tensorflow_probability")
      + )
      Error in py_module_import(module, convert = convert) : 
        ImportError: /lib64/libstdc++.so.6: version `CXXABI_1.3.9' not found (required by /c4/home/henrik/.cache/R/basilisk/1.14.3/pareg/1.6.0/pareg/lib/python3.9/site-packages/tensorflow/python/platform/_pywrap_cpu_feature_guard.so)
      Run `reticulate::py_last_error()` for details.
      Error in .activate_fallback(proc, testload, env = env, envpath = envpath,  : 
        ImportError: /lib64/libstdc++.so.6: version `CXXABI_1.3.9' not found (required by /c4/home/henrik/.cache/R/basilisk/1.14.3/pareg/1.6.0/pareg/lib/python3.9/site-packages/tensorflow/python/platform/_pywrap_cpu_feature_guard.so)
      Run `reticulate::py_last_error()` for details.
      Calls: <Anonymous> -> .activate_fallback
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘pareg.Rmd’ using rmarkdown
    The magick package is required to crop "/c4/home/henrik/repositories/globals/revdep/checks/pareg/new/pareg.Rcheck/vign_test/pareg/vignettes/pareg_files/figure-html/unnamed-chunk-4-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/globals/revdep/checks/pareg/new/pareg.Rcheck/vign_test/pareg/vignettes/pareg_files/figure-html/unnamed-chunk-5-1.png" but not available.
    
    Quitting from lines 145-150 [unnamed-chunk-9] (pareg.Rmd)
    Error: processing vignette 'pareg.Rmd' failed with diagnostics:
    ImportError: /lib64/libstdc++.so.6: version `CXXABI_1.3.9' not found (required by /c4/home/henrik/.cache/R/basilisk/1.14.3/pareg/1.6.0/pareg/lib/python3.9/site-packages/tensorflow/python/platform/_pywrap_cpu_feature_guard.so)
    Run `reticulate::py_last_error()` for details.
    ...
    --- re-building ‘pathway_similarities.Rmd’ using rmarkdown
    The magick package is required to crop "/c4/home/henrik/repositories/globals/revdep/checks/pareg/new/pareg.Rcheck/vign_test/pareg/vignettes/pathway_similarities_files/figure-html/unnamed-chunk-2-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/globals/revdep/checks/pareg/new/pareg.Rcheck/vign_test/pareg/vignettes/pathway_similarities_files/figure-html/unnamed-chunk-3-1.png" but not available.
    --- finished re-building ‘pathway_similarities.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘pareg.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking for portable file names ... NOTE
    ```
    Found the following non-portable file paths:
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_ablation_study/config.yaml
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_ablation_study/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_dispersion_fitting/config.yaml
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_dispersion_fitting/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_real_datasets/config.yaml
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_real_datasets/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_regularization_effect/config.yaml
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_regularization_effect/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_regularization_parameter/config.yaml
    ...
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_response_distribution/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_similarity_measures/config.yaml
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_similarity_measures/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/workflow/scripts/compare_rocauc_vs_loss.R
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_regularization_parameter
    
    Tarballs are only required to store paths of up to 100 bytes and cannot
    store those of more than 256 bytes, with restrictions including to 100
    bytes for the final component.
    See section ‘Package structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking whether package ‘pareg’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/pareg/new/pareg.Rcheck/00install.out’ for details.
    ```

# parseRPDR

<details>

* Version: 1.1.0
* GitHub: https://github.com/martonkolossvary/parseRPDR
* Source code: https://github.com/cran/parseRPDR
* Date/Publication: 2024-01-09 12:10:02 UTC
* Number of recursive dependencies: 89

Run `revdep_details(, "parseRPDR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘doParallel’
      All declared Imports should be used.
    ```

# partR2

<details>

* Version: 0.9.2
* GitHub: https://github.com/mastoffel/partR2
* Source code: https://github.com/cran/partR2
* Date/Publication: 2024-03-04 13:20:02 UTC
* Number of recursive dependencies: 94

Run `revdep_details(, "partR2")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# pavo

<details>

* Version: 2.9.0
* GitHub: https://github.com/rmaia/pavo
* Source code: https://github.com/cran/pavo
* Date/Publication: 2023-09-24 10:10:02 UTC
* Number of recursive dependencies: 104

Run `revdep_details(, "pavo")` for more info

</details>

## In both

*   checking whether package ‘pavo’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/pavo/new/pavo.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘imager’
    ```

# PCRedux

<details>

* Version: 1.1-2
* GitHub: https://github.com/PCRuniversum/PCRedux
* Source code: https://github.com/cran/PCRedux
* Date/Publication: 2022-05-11 11:40:02 UTC
* Number of recursive dependencies: 153

Run `revdep_details(, "PCRedux")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘PCRedux.Rmd’ using rmarkdown
    ! LaTeX Error: File `iftex.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'PCRedux.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/globals/revdep/checks/PCRedux/new/PCRedux.Rcheck/vign_test/PCRedux/vignettes/PCRedux.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See PCRedux.log for more info.
    --- failed re-building ‘PCRedux.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘PCRedux.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# phecodemap

<details>

* Version: 0.1.0
* GitHub: https://github.com/celehs/phecodemap
* Source code: https://github.com/cran/phecodemap
* Date/Publication: 2022-01-15 09:02:44 UTC
* Number of recursive dependencies: 123

Run `revdep_details(, "phecodemap")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 114 marked UTF-8 strings
    ```

# photosynthesis

<details>

* Version: 2.1.4
* GitHub: https://github.com/cdmuir/photosynthesis
* Source code: https://github.com/cran/photosynthesis
* Date/Publication: 2023-08-15 07:20:05 UTC
* Number of recursive dependencies: 144

Run `revdep_details(, "photosynthesis")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        doc   6.0Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 13 marked UTF-8 strings
    ```

# phylolm

<details>

* Version: 2.6.2
* GitHub: https://github.com/lamho86/phylolm
* Source code: https://github.com/cran/phylolm
* Date/Publication: 2020-06-22 05:10:08 UTC
* Number of recursive dependencies: 41

Run `revdep_details(, "phylolm")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘geiger’, ‘caper’
    ```

# PLNmodels

<details>

* Version: 1.2.0
* GitHub: https://github.com/pln-team/PLNmodels
* Source code: https://github.com/cran/PLNmodels
* Date/Publication: 2024-03-05 15:50:03 UTC
* Number of recursive dependencies: 151

Run `revdep_details(, "PLNmodels")` for more info

</details>

## In both

*   checking whether package ‘PLNmodels’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/PLNmodels/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/PLNmodels/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/PLNmodels/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/PLNmodels/new/PLNmodels.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 27.5Mb
      sub-directories of 1Mb or more:
        data   1.4Mb
        doc    2.0Mb
        libs  22.4Mb
    ```

# plotly

<details>

* Version: 4.10.4
* GitHub: https://github.com/plotly/plotly.R
* Source code: https://github.com/cran/plotly
* Date/Publication: 2024-01-13 22:40:02 UTC
* Number of recursive dependencies: 148

Run `revdep_details(, "plotly")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.5Mb
      sub-directories of 1Mb or more:
        htmlwidgets   3.8Mb
    ```

# pointblank

<details>

* Version: 0.12.0
* GitHub: https://github.com/rstudio/pointblank
* Source code: https://github.com/cran/pointblank
* Date/Publication: 2024-03-01 08:30:02 UTC
* Number of recursive dependencies: 135

Run `revdep_details(, "pointblank")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# portvine

<details>

* Version: 1.0.3
* GitHub: https://github.com/EmanuelSommer/portvine
* Source code: https://github.com/cran/portvine
* Date/Publication: 2024-01-18 16:30:02 UTC
* Number of recursive dependencies: 130

Run `revdep_details(, "portvine")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 52.9Mb
      sub-directories of 1Mb or more:
        libs  51.9Mb
    ```

# ppseq

<details>

* Version: 0.2.3
* GitHub: https://github.com/zabore/ppseq
* Source code: https://github.com/cran/ppseq
* Date/Publication: 2024-01-23 15:00:06 UTC
* Number of recursive dependencies: 107

Run `revdep_details(, "ppseq")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.9Mb
      sub-directories of 1Mb or more:
        doc  10.4Mb
    ```

# ppsr

<details>

* Version: 0.0.5
* GitHub: NA
* Source code: https://github.com/cran/ppsr
* Date/Publication: 2024-02-18 12:30:02 UTC
* Number of recursive dependencies: 61

Run `revdep_details(, "ppsr")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘rpart’ ‘withr’
      All declared Imports should be used.
    ```

# projpred

<details>

* Version: 2.8.0
* GitHub: https://github.com/stan-dev/projpred
* Source code: https://github.com/cran/projpred
* Date/Publication: 2023-12-15 00:00:02 UTC
* Number of recursive dependencies: 158

Run `revdep_details(, "projpred")` for more info

</details>

## In both

*   checking whether package ‘projpred’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/projpred/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/projpred/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/projpred/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/projpred/new/projpred.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        doc    1.4Mb
        libs   3.6Mb
    ```

# Prostar

<details>

* Version: 1.34.6
* GitHub: https://github.com/prostarproteomics/Prostar
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2024-02-15
* Number of recursive dependencies: 331

Run `revdep_details(, "Prostar")` for more info

</details>

## In both

*   checking whether package ‘Prostar’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/Prostar/new/Prostar.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘Prostar’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Prostar’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/Prostar/new/Prostar.Rcheck/Prostar’


```
### CRAN

```
* installing *source* package ‘Prostar’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Prostar’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/Prostar/old/Prostar.Rcheck/Prostar’


```
# pseudohouseholds

<details>

* Version: 0.1.1
* GitHub: https://github.com/chris31415926535/pseudohouseholds
* Source code: https://github.com/cran/pseudohouseholds
* Date/Publication: 2023-07-19 09:30:02 UTC
* Number of recursive dependencies: 105

Run `revdep_details(, "pseudohouseholds")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 596 marked UTF-8 strings
    ```

# QDNAseq

<details>

* Version: 1.38.0
* GitHub: https://github.com/ccagc/QDNAseq
* Source code: https://github.com/cran/QDNAseq
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 89

Run `revdep_details(, "QDNAseq")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘QDNAseq.Rnw’ using Sweave
    EM algorithm started ... 
    
    Warning in allprior/tot :
      Recycling array of length 1 in vector-array arithmetic is deprecated.
      Use c() or as.vector() instead.
    
    Warning in allprior/tot :
      Recycling array of length 1 in vector-array arithmetic is deprecated.
    ...
    l.196 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘QDNAseq.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘QDNAseq.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# RAINBOWR

<details>

* Version: 0.1.35
* GitHub: NA
* Source code: https://github.com/cran/RAINBOWR
* Date/Publication: 2024-03-03 09:12:36 UTC
* Number of recursive dependencies: 167

Run `revdep_details(, "RAINBOWR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 45.2Mb
      sub-directories of 1Mb or more:
        libs  43.9Mb
    ```

# raveio

<details>

* Version: 0.9.0
* GitHub: https://github.com/beauchamplab/raveio
* Source code: https://github.com/cran/raveio
* Date/Publication: 2023-07-16 19:10:02 UTC
* Number of recursive dependencies: 134

Run `revdep_details(, "raveio")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘clustermq’
    ```

# receptiviti

<details>

* Version: 0.1.7
* GitHub: https://github.com/Receptiviti/receptiviti-r
* Source code: https://github.com/cran/receptiviti
* Date/Publication: 2024-02-23 23:50:05 UTC
* Number of recursive dependencies: 67

Run `revdep_details(, "receptiviti")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(receptiviti)
      > 
      > test_check("receptiviti")
      Status: ERROR
      Message: 400
    ...
       7. └─receptiviti::receptiviti(...)
      ── Failure ('test-receptiviti_status.R:5:3'): failures works ───────────────────
      receptiviti_status(...) is not NULL
      
      `actual` is a list
      `expected` is NULL
      
      [ FAIL 2 | WARN 0 | SKIP 2 | PASS 6 ]
      Error: Test failures
      Execution halted
    ```

# recipes

<details>

* Version: 1.0.10
* GitHub: https://github.com/tidymodels/recipes
* Source code: https://github.com/cran/recipes
* Date/Publication: 2024-02-18 18:00:02 UTC
* Number of recursive dependencies: 139

Run `revdep_details(, "recipes")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘fastICA’, ‘dimRed’
    ```

# regmedint

<details>

* Version: 1.0.1
* GitHub: https://github.com/kaz-yos/regmedint
* Source code: https://github.com/cran/regmedint
* Date/Publication: 2024-01-13 00:50:02 UTC
* Number of recursive dependencies: 154

Run `revdep_details(, "regmedint")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Deriv’
      All declared Imports should be used.
    ```

# reservr

<details>

* Version: 0.0.2
* GitHub: https://github.com/AshesITR/reservr
* Source code: https://github.com/cran/reservr
* Date/Publication: 2023-10-18 20:50:05 UTC
* Number of recursive dependencies: 143

Run `revdep_details(, "reservr")` for more info

</details>

## In both

*   checking whether package ‘reservr’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/reservr/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/reservr/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/reservr/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/reservr/new/reservr.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 16.8Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        libs  14.7Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# rgee

<details>

* Version: 1.1.7
* GitHub: https://github.com/r-spatial/rgee
* Source code: https://github.com/cran/rgee
* Date/Publication: 2023-09-27 08:30:02 UTC
* Number of recursive dependencies: 144

Run `revdep_details(, "rgee")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.2Mb
      sub-directories of 1Mb or more:
        doc   6.9Mb
    ```

# robotstxt

<details>

* Version: 0.7.13
* GitHub: https://github.com/ropensci/robotstxt
* Source code: https://github.com/cran/robotstxt
* Date/Publication: 2020-09-03 19:30:02 UTC
* Number of recursive dependencies: 70

Run `revdep_details(, "robotstxt")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# rpm

<details>

* Version: 0.7-1
* GitHub: https://github.com/handcock/rpm
* Source code: https://github.com/cran/rpm
* Date/Publication: 2023-04-21 23:30:02 UTC
* Number of recursive dependencies: 66

Run `revdep_details(, "rpm")` for more info

</details>

## In both

*   checking whether package ‘rpm’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/rpm/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/rpm/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/rpm/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/rpm/new/rpm.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.6Mb
      sub-directories of 1Mb or more:
        libs  11.1Mb
    ```

# rsparkling

<details>

* Version: 0.2.19
* GitHub: https://github.com/h2oai/sparkling-water
* Source code: https://github.com/cran/rsparkling
* Date/Publication: 2020-01-28 23:10:02 UTC
* Number of recursive dependencies: 60

Run `revdep_details(, "rsparkling")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘h2o’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# sapfluxnetr

<details>

* Version: 0.1.4
* GitHub: https://github.com/sapfluxnet/sapfluxnetr
* Source code: https://github.com/cran/sapfluxnetr
* Date/Publication: 2023-01-25 15:30:02 UTC
* Number of recursive dependencies: 83

Run `revdep_details(, "sapfluxnetr")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# scanMiRApp

<details>

* Version: 1.8.0
* GitHub: NA
* Source code: https://github.com/cran/scanMiRApp
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 177

Run `revdep_details(, "scanMiRApp")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: 'BSgenome.Mmusculus.UCSC.mm39'
    ':::' calls which should be '::':
      'BSgenome.Hsapiens.UCSC.hg38:::BSgenome.Hsapiens.UCSC.hg38'
      'BSgenome.Mmusculus.UCSC.mm10:::BSgenome.Mmusculus.UCSC.mm10'
      'BSgenome.Rnorvegicus.UCSC.rn6:::BSgenome.Rnorvegicus.UCSC.rn6'
      See the note in ?`:::` about the use of this operator.
    Unavailable namespace imported from by a ':::' call: 'BSgenome.Mmusculus.UCSC.mm39'
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .fakeAnno: no visible binding for global variable 'SampleTranscript'
    .fakeAnno: no visible binding for global variable 'SampleKdModel'
    plotSitesOnUTR: no visible binding for global variable 'logKd'
    plotSitesOnUTR: no visible binding for global variable 'note'
    Undefined global functions or variables:
      SampleKdModel SampleTranscript logKd note
    ```

# SCArray.sat

<details>

* Version: 1.2.1
* GitHub: https://github.com/AbbVie-ComputationalGenomics/SCArray
* Source code: https://github.com/cran/SCArray.sat
* Date/Publication: 2024-01-16
* Number of recursive dependencies: 180

Run `revdep_details(, "SCArray.sat")` for more info

</details>

## In both

*   checking S3 generic/method consistency ... WARNING
    ```
    SetAssayData:
      function(object, layer, new.data, slot, ...)
    SetAssayData.SCArrayAssay:
      function(object, slot, new.data, ...)
    
    CreateSeuratObject:
      function(counts, assay, names.field, names.delim, meta.data, project,
               ...)
    CreateSeuratObject.DelayedMatrix:
      function(counts, project, assay, names.field, names.delim, meta.data,
               min.cells, min.features, row.names, ...)
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘Seurat:::DEmethods_counts’ ‘Seurat:::DEmethods_nocorrect’
      ‘Seurat:::FastExpMean’ ‘Seurat:::FastLogVMR’ ‘Seurat:::NBResiduals’
      ‘Seurat:::UpdateKey’ ‘Seurat:::ValidateDataForMerge’
      See the note in ?`:::` about the use of this operator.
    ```

# scRNAseqApp

<details>

* Version: 1.2.2
* GitHub: https://github.com/jianhong/scRNAseqApp
* Source code: https://github.com/cran/scRNAseqApp
* Date/Publication: 2023-11-02
* Number of recursive dependencies: 235

Run `revdep_details(, "scRNAseqApp")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'celldex', 'SingleR', 'tricycle'
    ```

# sctransform

<details>

* Version: 0.4.1
* GitHub: https://github.com/satijalab/sctransform
* Source code: https://github.com/cran/sctransform
* Date/Publication: 2023-10-19 04:40:02 UTC
* Number of recursive dependencies: 68

Run `revdep_details(, "sctransform")` for more info

</details>

## In both

*   checking whether package ‘sctransform’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/sctransform/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/sctransform/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/sctransform/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/sctransform/new/sctransform.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘glmGamPoi’
    ```

# sdmApp

<details>

* Version: 0.0.2
* GitHub: https://github.com/Abson-dev/sdmApp
* Source code: https://github.com/cran/sdmApp
* Date/Publication: 2021-07-07 08:30:02 UTC
* Number of recursive dependencies: 176

Run `revdep_details(, "sdmApp")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘sp’
      All declared Imports should be used.
    ```

# sdmTMB

<details>

* Version: 0.4.3
* GitHub: https://github.com/pbs-assess/sdmTMB
* Source code: https://github.com/cran/sdmTMB
* Date/Publication: 2024-02-29 01:40:02 UTC
* Number of recursive dependencies: 115

Run `revdep_details(, "sdmTMB")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 105.4Mb
      sub-directories of 1Mb or more:
        libs  103.7Mb
    ```

# semidist

<details>

* Version: 0.1.0
* GitHub: https://github.com/wzhong41/semidist
* Source code: https://github.com/cran/semidist
* Date/Publication: 2023-11-21 06:50:02 UTC
* Number of recursive dependencies: 44

Run `revdep_details(, "semidist")` for more info

</details>

## In both

*   checking whether package ‘semidist’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/semidist/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/semidist/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/semidist/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/semidist/new/semidist.Rcheck/00install.out’ for details.
    ```

# sentopics

<details>

* Version: 0.7.2
* GitHub: https://github.com/odelmarcelle/sentopics
* Source code: https://github.com/cran/sentopics
* Date/Publication: 2023-05-28 09:50:02 UTC
* Number of recursive dependencies: 173

Run `revdep_details(, "sentopics")` for more info

</details>

## In both

*   checking whether package ‘sentopics’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/sentopics/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/sentopics/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/sentopics/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/sentopics/new/sentopics.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
      sub-directories of 1Mb or more:
        data   1.2Mb
        libs   6.2Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘lexicon’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3128 marked UTF-8 strings
    ```

# Seurat

<details>

* Version: 5.0.2
* GitHub: https://github.com/satijalab/seurat
* Source code: https://github.com/cran/Seurat
* Date/Publication: 2024-02-29 00:20:08 UTC
* Number of recursive dependencies: 266

Run `revdep_details(, "Seurat")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'BPCells', 'presto'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 16.0Mb
      sub-directories of 1Mb or more:
        R      1.7Mb
        libs  13.5Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Signac’
    ```

# SeuratObject

<details>

* Version: 5.0.1
* GitHub: https://github.com/mojaveazure/seurat-object
* Source code: https://github.com/cran/SeuratObject
* Date/Publication: 2023-11-17 22:40:16 UTC
* Number of recursive dependencies: 103

Run `revdep_details(, "SeuratObject")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘BPCells’
    
    Package which this enhances but not available for checking: ‘Seurat’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        libs   3.2Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘plotly’
    ```

# sharp

<details>

* Version: 1.4.6
* GitHub: https://github.com/barbarabodinier/sharp
* Source code: https://github.com/cran/sharp
* Date/Publication: 2024-02-03 17:30:02 UTC
* Number of recursive dependencies: 157

Run `revdep_details(, "sharp")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rCOSA’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rCOSA’
    ```

# shiny

<details>

* Version: 1.8.0
* GitHub: https://github.com/rstudio/shiny
* Source code: https://github.com/cran/shiny
* Date/Publication: 2023-11-17 23:40:02 UTC
* Number of recursive dependencies: 90

Run `revdep_details(, "shiny")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.4Mb
      sub-directories of 1Mb or more:
        R     1.4Mb
        www   8.9Mb
    ```

# shiny.worker

<details>

* Version: 0.0.1
* GitHub: NA
* Source code: https://github.com/cran/shiny.worker
* Date/Publication: 2021-01-21 11:00:02 UTC
* Number of recursive dependencies: 65

Run `revdep_details(, "shiny.worker")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R6’ ‘shiny’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# shinybrms

<details>

* Version: 1.8.0
* GitHub: https://github.com/fweber144/shinybrms
* Source code: https://github.com/cran/shinybrms
* Date/Publication: 2022-08-05 22:50:07 UTC
* Number of recursive dependencies: 149

Run `revdep_details(, "shinybrms")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

# shinyML

<details>

* Version: 1.0.1
* GitHub: https://github.com/JeanBertinR/shinyML
* Source code: https://github.com/cran/shinyML
* Date/Publication: 2021-02-24 17:00:02 UTC
* Number of recursive dependencies: 118

Run `revdep_details(, "shinyML")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# sigminer

<details>

* Version: 2.3.0
* GitHub: https://github.com/ShixiangWang/sigminer
* Source code: https://github.com/cran/sigminer
* Date/Publication: 2023-12-12 11:50:03 UTC
* Number of recursive dependencies: 205

Run `revdep_details(, "sigminer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        help   1.7Mb
        libs   1.4Mb
    ```

# Signac

<details>

* Version: 1.12.0
* GitHub: https://github.com/stuart-lab/signac
* Source code: https://github.com/cran/Signac
* Date/Publication: 2023-11-08 09:30:02 UTC
* Number of recursive dependencies: 254

Run `revdep_details(, "Signac")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        R      1.1Mb
        libs   2.9Mb
    ```

# signeR

<details>

* Version: 2.4.0
* GitHub: https://github.com/TojalLab/signeR
* Source code: https://github.com/cran/signeR
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 244

Run `revdep_details(, "signeR")` for more info

</details>

## In both

*   checking whether package ‘signeR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/signeR/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/signeR/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/signeR/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/signeR/new/signeR.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        R     1.2Mb
        doc   4.5Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    covariate: no visible binding for global variable ‘.’
    explorepage: no visible binding for global variable ‘.’
    genCountMatrixFromMAF: no visible binding for global variable
      ‘Variant_Type’
    genCountMatrixFromMAF: no visible binding for global variable
      ‘Reference_Allele’
    genCountMatrixFromMAF: no visible binding for global variable
      ‘Tumor_Seq_Allele2’
    genCountMatrixFromMAF: no visible binding for global variable
      ‘Tumor_Seq_Allele1’
    ...
    ExposureCorrelation,SignExp-numeric: no visible binding for global
      variable ‘exposure’
    ExposureCorrelation,matrix-numeric: no visible binding for global
      variable ‘Feature’
    ExposureCorrelation,matrix-numeric: no visible binding for global
      variable ‘exposure’
    Undefined global functions or variables:
      . Col Feature Frequency Reference_Allele Row Samples Signatures
      Tumor_Seq_Allele1 Tumor_Seq_Allele2 Variant_Type alt<- exposure fc
      project sig sig_test
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: cosmic_data.Rd:91-93: Dropping empty section \details
    prepare_Rd: cosmic_data.Rd:98-100: Dropping empty section \references
    prepare_Rd: cosmic_data.Rd:101-102: Dropping empty section \examples
    prepare_Rd: tcga_similarities.Rd:96-98: Dropping empty section \details
    prepare_Rd: tcga_similarities.Rd:99-101: Dropping empty section \source
    prepare_Rd: tcga_similarities.Rd:102-104: Dropping empty section \references
    prepare_Rd: tcga_similarities.Rd:105-106: Dropping empty section \examples
    prepare_Rd: tcga_tumors.Rd:18-20: Dropping empty section \details
    prepare_Rd: tcga_tumors.Rd:21-23: Dropping empty section \source
    prepare_Rd: tcga_tumors.Rd:24-26: Dropping empty section \references
    prepare_Rd: tcga_tumors.Rd:27-28: Dropping empty section \examples
    ```

# SimDesign

<details>

* Version: 2.14
* GitHub: https://github.com/philchalmers/SimDesign
* Source code: https://github.com/cran/SimDesign
* Date/Publication: 2024-01-09 09:10:11 UTC
* Number of recursive dependencies: 124

Run `revdep_details(, "SimDesign")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘doMPI’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        doc   5.2Mb
    ```

# sits

<details>

* Version: 1.4.2-1
* GitHub: https://github.com/e-sensing/sits
* Source code: https://github.com/cran/sits
* Date/Publication: 2023-11-02 15:10:02 UTC
* Number of recursive dependencies: 221

Run `revdep_details(, "sits")` for more info

</details>

## In both

*   checking whether package ‘sits’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/sits/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/sits/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/sits/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/sits/new/sits.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.2Mb
      sub-directories of 1Mb or more:
        R         1.1Mb
        extdata   1.5Mb
        libs      9.9Mb
    ```

# skpr

<details>

* Version: 1.6.2
* GitHub: https://github.com/tylermorganwall/skpr
* Source code: https://github.com/cran/skpr
* Date/Publication: 2024-02-06 19:50:02 UTC
* Number of recursive dependencies: 149

Run `revdep_details(, "skpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 63.3Mb
      sub-directories of 1Mb or more:
        libs  62.8Mb
    ```

# SmCCNet

<details>

* Version: 2.0.2
* GitHub: https://github.com/KechrisLab/SmCCNet
* Source code: https://github.com/cran/SmCCNet
* Date/Publication: 2024-01-13 21:50:17 UTC
* Number of recursive dependencies: 162

Run `revdep_details(, "SmCCNet")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘SmCCNet_Vignette_AutoSmCCNet.Rmd’ using rmarkdown
    ! kpathsea: Running mktexfmt xelatex.fmt
    
    Error: processing vignette 'SmCCNet_Vignette_AutoSmCCNet.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/globals/revdep/checks/SmCCNet/new/SmCCNet.Rcheck/vign_test/SmCCNet/vignettes/SmCCNet_Vignette_AutoSmCCNet.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See SmCCNet_Vignette_AutoSmCCNet.log for more info.
    --- failed re-building ‘SmCCNet_Vignette_AutoSmCCNet.Rmd’
    
    --- re-building ‘SmCCNet_Vignette_MultiOmics.Rmd’ using rmarkdown
    ! kpathsea: Running mktexfmt xelatex.fmt
    ...
    Error: processing vignette 'SmCCNet_Vignette_SingleOmics.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/globals/revdep/checks/SmCCNet/new/SmCCNet.Rcheck/vign_test/SmCCNet/vignettes/SmCCNet_Vignette_SingleOmics.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See SmCCNet_Vignette_SingleOmics.log for more info.
    --- failed re-building ‘SmCCNet_Vignette_SingleOmics.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘SmCCNet_Vignette_AutoSmCCNet.Rmd’ ‘SmCCNet_Vignette_MultiOmics.Rmd’
      ‘SmCCNet_Vignette_SingleOmics.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# smoots

<details>

* Version: 1.1.4
* GitHub: NA
* Source code: https://github.com/cran/smoots
* Date/Publication: 2023-09-11 08:50:02 UTC
* Number of recursive dependencies: 76

Run `revdep_details(, "smoots")` for more info

</details>

## In both

*   checking whether package ‘smoots’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/smoots/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/smoots/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/smoots/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/smoots/new/smoots.Rcheck/00install.out’ for details.
    ```

# solitude

<details>

* Version: 1.1.3
* GitHub: https://github.com/talegari/solitude
* Source code: https://github.com/cran/solitude
* Date/Publication: 2021-07-29 20:00:02 UTC
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

# SpaDES.core

<details>

* Version: 2.0.3
* GitHub: https://github.com/PredictiveEcology/SpaDES.core
* Source code: https://github.com/cran/SpaDES.core
* Date/Publication: 2023-11-10 10:20:02 UTC
* Number of recursive dependencies: 136

Run `revdep_details(, "SpaDES.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘NLMR’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        R   4.7Mb
    ```

# spaMM

<details>

* Version: 4.4.16
* GitHub: NA
* Source code: https://github.com/cran/spaMM
* Date/Publication: 2023-12-20 13:50:02 UTC
* Number of recursive dependencies: 102

Run `revdep_details(, "spaMM")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'Infusion', 'blackbox'
    
    Packages which this enhances but not available for checking:
      'multcomp', 'RLRsim', 'lmerTest'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 56.9Mb
      sub-directories of 1Mb or more:
        R      2.7Mb
        libs  52.9Mb
    ```

# sparkavro

<details>

* Version: 0.3.0
* GitHub: https://github.com/chezou/sparkavro
* Source code: https://github.com/cran/sparkavro
* Date/Publication: 2020-01-10 04:40:02 UTC
* Number of recursive dependencies: 57

Run `revdep_details(, "sparkavro")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# sparkbq

<details>

* Version: 0.1.1
* GitHub: https://github.com/miraisolutions/sparkbq
* Source code: https://github.com/cran/sparkbq
* Date/Publication: 2019-12-18 18:00:02 UTC
* Number of recursive dependencies: 40

Run `revdep_details(, "sparkbq")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# sparkhail

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/sparkhail
* Date/Publication: 2019-12-23 17:50:02 UTC
* Number of recursive dependencies: 83

Run `revdep_details(, "sparkhail")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# sparklyr

<details>

* Version: 1.8.4
* GitHub: https://github.com/sparklyr/sparklyr
* Source code: https://github.com/cran/sparklyr
* Date/Publication: 2023-10-30 08:20:05 UTC
* Number of recursive dependencies: 116

Run `revdep_details(, "sparklyr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        R      1.6Mb
        java   3.8Mb
    ```

# sparktf

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/sparktf
* Date/Publication: 2019-03-05 14:30:03 UTC
* Number of recursive dependencies: 57

Run `revdep_details(, "sparktf")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# sparkwarc

<details>

* Version: 0.1.6
* GitHub: https://github.com/r-spark/sparkwarc
* Source code: https://github.com/cran/sparkwarc
* Date/Publication: 2022-01-11 08:50:02 UTC
* Number of recursive dependencies: 41

Run `revdep_details(, "sparkwarc")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

# sparkxgb

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/sparkxgb
* Date/Publication: 2021-02-23 10:20:02 UTC
* Number of recursive dependencies: 58

Run `revdep_details(, "sparkxgb")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# sparrpowR

<details>

* Version: 0.2.8
* GitHub: https://github.com/machiela-lab/sparrpowR
* Source code: https://github.com/cran/sparrpowR
* Date/Publication: 2024-01-23 15:20:02 UTC
* Number of recursive dependencies: 130

Run `revdep_details(, "sparrpowR")` for more info

</details>

## In both

*   checking whether package ‘sparrpowR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/sparrpowR/new/sparrpowR.Rcheck/00install.out’ for details.
    ```

# SPARSEMODr

<details>

* Version: 1.2.0
* GitHub: https://github.com/NAU-CCL/SPARSEMODr
* Source code: https://github.com/cran/SPARSEMODr
* Date/Publication: 2022-07-19 20:50:02 UTC
* Number of recursive dependencies: 127

Run `revdep_details(, "SPARSEMODr")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘geosphere’ ‘lubridate’ ‘tidyverse’ ‘viridis’
      All declared Imports should be used.
    ```

# spatialwarnings

<details>

* Version: 3.0.3
* GitHub: https://github.com/spatial-ews/spatialwarnings
* Source code: https://github.com/cran/spatialwarnings
* Date/Publication: 2022-03-21 13:00:02 UTC
* Number of recursive dependencies: 97

Run `revdep_details(, "spatialwarnings")` for more info

</details>

## In both

*   checking whether package ‘spatialwarnings’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/spatialwarnings/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/spatialwarnings/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/spatialwarnings/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/spatialwarnings/new/spatialwarnings.Rcheck/00install.out’ for details.
    ```

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'indictest.Rd':
      ‘mgcv’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        libs   6.0Mb
    ```

# sphunif

<details>

* Version: 1.3.0
* GitHub: https://github.com/egarpor/sphunif
* Source code: https://github.com/cran/sphunif
* Date/Publication: 2023-12-04 19:50:02 UTC
* Number of recursive dependencies: 77

Run `revdep_details(, "sphunif")` for more info

</details>

## In both

*   checking whether package ‘sphunif’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/sphunif/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/sphunif/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/sphunif/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/sphunif/new/sphunif.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 24.7Mb
      sub-directories of 1Mb or more:
        libs  23.7Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 189 marked UTF-8 strings
    ```

# spNetwork

<details>

* Version: 0.4.3.8
* GitHub: https://github.com/JeremyGelb/spNetwork
* Source code: https://github.com/cran/spNetwork
* Date/Publication: 2023-08-24 11:20:05 UTC
* Number of recursive dependencies: 146

Run `revdep_details(, "spNetwork")` for more info

</details>

## In both

*   checking whether package ‘spNetwork’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/spNetwork/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/spNetwork/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/spNetwork/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/spNetwork/new/spNetwork.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 25.5Mb
      sub-directories of 1Mb or more:
        doc       1.0Mb
        extdata   2.6Mb
        libs     20.5Mb
    ```

# squat

<details>

* Version: 0.3.0
* GitHub: https://github.com/LMJL-Alea/squat
* Source code: https://github.com/cran/squat
* Date/Publication: 2024-01-10 15:40:02 UTC
* Number of recursive dependencies: 143

Run `revdep_details(, "squat")` for more info

</details>

## In both

*   checking whether package ‘squat’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/squat/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/squat/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/squat/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/squat/new/squat.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 20.4Mb
      sub-directories of 1Mb or more:
        data   1.1Mb
        help   1.1Mb
        libs  18.0Mb
    ```

# sRACIPE

<details>

* Version: 1.18.0
* GitHub: https://github.com/vivekkohar/sRACIPE
* Source code: https://github.com/cran/sRACIPE
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 104

Run `revdep_details(, "sRACIPE")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

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

# ssdtools

<details>

* Version: 1.0.6
* GitHub: https://github.com/bcgov/ssdtools
* Source code: https://github.com/cran/ssdtools
* Date/Publication: 2023-09-07 14:10:02 UTC
* Number of recursive dependencies: 120

Run `revdep_details(, "ssdtools")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 42.1Mb
      sub-directories of 1Mb or more:
        doc    1.2Mb
        libs  39.6Mb
    ```

# SSLR

<details>

* Version: 0.9.3.3
* GitHub: NA
* Source code: https://github.com/cran/SSLR
* Date/Publication: 2021-07-22 08:10:07 UTC
* Number of recursive dependencies: 228

Run `revdep_details(, "SSLR")` for more info

</details>

## In both

*   checking whether package ‘SSLR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/SSLR/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/SSLR/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/SSLR/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/SSLR/new/SSLR.Rcheck/00install.out’ for details.
    ```

# stars

<details>

* Version: 0.6-4
* GitHub: https://github.com/r-spatial/stars
* Source code: https://github.com/cran/stars
* Date/Publication: 2023-09-11 11:50:02 UTC
* Number of recursive dependencies: 164

Run `revdep_details(, "stars")` for more info

</details>

## Newly broken

*   checking examples ...sh: line 1: 39344 Aborted                 (core dumped) LANGUAGE=en _R_CHECK_INTERNALS2_=1 '/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/bin/R' --vanilla --encoding=UTF-8 > 'stars-Ex.Rout' 2>&1 < 'stars-Ex.R'
    ```
     ERROR
    Running examples in ‘stars-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: mdim
    > ### Title: Read or write data using GDAL's multidimensional array API
    > ### Aliases: mdim read_mdim write_mdim
    > 
    > ### ** Examples
    > 
    ...
                               dmalloc: no
        Packages w/ extra debug output: none
                           API tracing: no
                  Using memory checker: no
       Memory allocation sanity checks: no
                Function stack tracing: no
                      Use file locking: best-effort
             Strict file format checks: no
          Optimization instrumentation: no
    Bye...
    ```

## Newly fixed

*   checking examples ...sh: line 1: 39401 Aborted                 (core dumped) LANGUAGE=en _R_CHECK_INTERNALS2_=1 '/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/bin/R' --vanilla --encoding=UTF-8 > 'stars-Ex.Rout' 2>&1 < 'stars-Ex.R'
    ```
     ERROR
    Running examples in ‘stars-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: mdim
    > ### Title: Read or write data using GDAL's multidimensional array API
    > ### Aliases: mdim read_mdim write_mdim
    > 
    > ### ** Examples
    > 
    ...
                               dmalloc: no
        Packages w/ extra debug output: none
                           API tracing: no
                  Using memory checker: no
       Memory allocation sanity checks: no
                Function stack tracing: no
                      Use file locking: best-effort
             Strict file format checks: no
          Optimization instrumentation: no
    Bye...
    ```

## In both

*   checking tests ...
    ```
      Running ‘aggregate.R’
      Comparing ‘aggregate.Rout’ to ‘aggregate.Rout.save’ ...4c4
    < Linking to GEOS 3.11.2, GDAL 3.6.4, PROJ 8.2.1; sf_use_s2() is TRUE
    ---
    > Linking to GEOS 3.11.2, GDAL 3.6.2, PROJ 9.2.0; sf_use_s2() is TRUE
      Running ‘align.R’
      Comparing ‘align.Rout’ to ‘align.Rout.save’ ... OK
      Running ‘area.R’
      Comparing ‘area.Rout’ to ‘area.Rout.save’ ... OK
      Running ‘crop.R’
    ...
                                 dmalloc: no
          Packages w/ extra debug output: none
                             API tracing: no
                    Using memory checker: no
         Memory allocation sanity checks: no
                  Function stack tracing: no
                        Use file locking: best-effort
               Strict file format checks: no
            Optimization instrumentation: no
      Bye...
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘starsdata’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        doc   2.4Mb
        nc    1.7Mb
    ```

# startR

<details>

* Version: 2.3.1
* GitHub: NA
* Source code: https://github.com/cran/startR
* Date/Publication: 2023-12-21 16:20:02 UTC
* Number of recursive dependencies: 60

Run `revdep_details(, "startR")` for more info

</details>

## In both

*   checking whether package ‘startR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/startR/new/startR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘startR’ ...
** package ‘startR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘startR’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/startR/new/startR.Rcheck/startR’


```
### CRAN

```
* installing *source* package ‘startR’ ...
** package ‘startR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘startR’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/startR/old/startR.Rcheck/startR’


```
# stppSim

<details>

* Version: 1.3.2
* GitHub: https://github.com/Manalytics/stppSim
* Source code: https://github.com/cran/stppSim
* Date/Publication: 2023-10-29 21:20:02 UTC
* Number of recursive dependencies: 133

Run `revdep_details(, "stppSim")` for more info

</details>

## In both

*   checking whether package ‘stppSim’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/stppSim/new/stppSim.Rcheck/00install.out’ for details.
    ```

# survstan

<details>

* Version: 0.0.6.1
* GitHub: https://github.com/fndemarqui/survstan
* Source code: https://github.com/cran/survstan
* Date/Publication: 2024-02-05 15:00:02 UTC
* Number of recursive dependencies: 127

Run `revdep_details(, "survstan")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 88.9Mb
      sub-directories of 1Mb or more:
        libs  88.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RcppParallel’ ‘rstantools’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# synergyfinder

<details>

* Version: 3.10.3
* GitHub: NA
* Source code: https://github.com/cran/synergyfinder
* Date/Publication: 2024-01-22
* Number of recursive dependencies: 202

Run `revdep_details(, "synergyfinder")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: ‘scales’
    Namespaces in Imports field not imported from:
      ‘future’ ‘gstat’ ‘nleqslv’ ‘sp’ ‘tidyverse’
      All declared Imports should be used.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        doc   5.7Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    .Extract2DrugPlotData: no visible binding for global variable
      ‘input_type’
    .Extract2DrugPlotData: no visible binding for global variable
      ‘block_id’
    .Extract2DrugPlotData: no visible binding for global variable ‘value’
    .Extract2DrugPlotData: no visible binding for global variable ‘left’
    .Extract2DrugPlotData: no visible binding for global variable ‘right’
    .Extract2DrugPlotData: no visible binding for global variable ‘conc1’
    .Extract2DrugPlotData: no visible binding for global variable ‘conc2’
    .Extract2DrugPlotData: no visible binding for global variable ‘text’
    ...
      response_CI95 response_mean response_origin response_origin_CI95
      response_origin_mean response_origin_sd response_origin_sem
      response_sd response_sem right start synergy t.test text theta value
      x y
    Consider adding
      importFrom("grDevices", "dev.list", "dev.off")
      importFrom("graphics", "text")
      importFrom("stats", "end", "predict", "start", "t.test")
      importFrom("utils", "data", "head")
    to your NAMESPACE file.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) FitDoseResponse.Rd:55: Escaped LaTeX specials: \&
    ```

# tableschema.r

<details>

* Version: 1.1.2
* GitHub: https://github.com/frictionlessdata/tableschema-r
* Source code: https://github.com/cran/tableschema.r
* Date/Publication: 2022-09-29 20:00:03 UTC
* Number of recursive dependencies: 66

Run `revdep_details(, "tableschema.r")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘parsedate’
    ```

# targeted

<details>

* Version: 0.5
* GitHub: https://github.com/kkholst/targeted
* Source code: https://github.com/cran/targeted
* Date/Publication: 2024-02-22 10:00:21 UTC
* Number of recursive dependencies: 98

Run `revdep_details(, "targeted")` for more info

</details>

## In both

*   checking whether package ‘targeted’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/targeted/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/targeted/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/targeted/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/targeted/new/targeted.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 22.4Mb
      sub-directories of 1Mb or more:
        doc    1.1Mb
        libs  20.9Mb
    ```

# targets

<details>

* Version: 1.5.1
* GitHub: https://github.com/ropensci/targets
* Source code: https://github.com/cran/targets
* Date/Publication: 2024-02-15 11:50:02 UTC
* Number of recursive dependencies: 166

Run `revdep_details(, "targets")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘clustermq’
    ```

# text

<details>

* Version: 1.2.0
* GitHub: https://github.com/OscarKjell/text
* Source code: https://github.com/cran/text
* Date/Publication: 2024-02-13 20:51:36 UTC
* Number of recursive dependencies: 160

Run `revdep_details(, "text")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3 marked UTF-8 strings
    ```

# tglkmeans

<details>

* Version: 0.5.4
* GitHub: https://github.com/tanaylab/tglkmeans
* Source code: https://github.com/cran/tglkmeans
* Date/Publication: 2024-01-09 14:10:02 UTC
* Number of recursive dependencies: 89

Run `revdep_details(, "tglkmeans")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        libs   5.0Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# tidyfit

<details>

* Version: 0.7.0
* GitHub: https://github.com/jpfitzinger/tidyfit
* Source code: https://github.com/cran/tidyfit
* Date/Publication: 2024-02-26 16:20:02 UTC
* Number of recursive dependencies: 188

Run `revdep_details(, "tidyfit")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘Accessing_Fitted_Model_Objects.Rmd’ using rmarkdown
    --- finished re-building ‘Accessing_Fitted_Model_Objects.Rmd’
    
    --- re-building ‘Flowchart.Rmd’ using rmarkdown
    --- finished re-building ‘Flowchart.Rmd’
    
    --- re-building ‘Predicting_Boston_House_Prices.Rmd’ using rmarkdown
    --- finished re-building ‘Predicting_Boston_House_Prices.Rmd’
    
    ...
    --- finished re-building ‘Rolling_Window_Time_Series_Regression.Rmd’
    
    --- re-building ‘Time-varying_parameters_vs_rolling_windows.Rmd’ using knitr
    --- finished re-building ‘Time-varying_parameters_vs_rolling_windows.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Feature_Selection.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# tidysdm

<details>

* Version: 0.9.4
* GitHub: https://github.com/EvolEcolGroup/tidysdm
* Source code: https://github.com/cran/tidysdm
* Date/Publication: 2024-03-05 20:30:02 UTC
* Number of recursive dependencies: 166

Run `revdep_details(, "tidysdm")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/bin/BATCH: line 60:   536 Aborted                 (core dumped) ${R_HOME}/bin/R -f ${in} ${opts} ${R_BATCH_OPTIONS} > ${out} 2>&1
    
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
                               Ranlib: ranlib
      
      Languages:
      ----------
    ...
                                 dmalloc: no
          Packages w/ extra debug output: none
                             API tracing: no
                    Using memory checker: no
         Memory allocation sanity checks: no
                  Function stack tracing: no
                        Use file locking: best-effort
               Strict file format checks: no
            Optimization instrumentation: no
      Bye...
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    sh: line 1:  2729 Aborted                 (core dumped) '/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/bin/R' --vanilla --no-echo > '/scratch/henrik/RtmpgjEKuC/filea983a551478' 2>&1 < '/scratch/henrik/RtmpgjEKuC/filea983ad9357b'
    --- re-building ‘a0_tidysdm_overview.Rmd’ using rmarkdown
    Warning! ***HDF5 library version mismatched error***
    The HDF5 header files used to compile this application do not match
    the version used by the HDF5 library to which this application is linked.
    Data corruption or segmentation faults may occur if the application continues.
    This can happen when an application was compiled by one version of HDF5 but
    linked with a different version of static or shared HDF5 library.
    You should recompile the application or check your shared library related
    ...
    Bye...
    --- re-building ‘a3_troubleshooting.Rmd’ using rmarkdown
    --- finished re-building ‘a3_troubleshooting.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘a0_tidysdm_overview.Rmd’ ‘a1_palaeodata_application.Rmd’
      ‘a2_tidymodels_additions.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# timetk

<details>

* Version: 2.9.0
* GitHub: https://github.com/business-science/timetk
* Source code: https://github.com/cran/timetk
* Date/Publication: 2023-10-31 22:30:02 UTC
* Number of recursive dependencies: 225

Run `revdep_details(, "timetk")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2750 marked UTF-8 strings
    ```

# TreeSearch

<details>

* Version: 1.4.0
* GitHub: https://github.com/ms609/TreeSearch
* Source code: https://github.com/cran/TreeSearch
* Date/Publication: 2023-08-26 04:50:02 UTC
* Number of recursive dependencies: 126

Run `revdep_details(, "TreeSearch")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        datasets   1.6Mb
        doc        1.2Mb
        libs       2.5Mb
    ```

# TriDimRegression

<details>

* Version: 1.0.2
* GitHub: https://github.com/alexander-pastukhov/tridim-regression
* Source code: https://github.com/cran/TriDimRegression
* Date/Publication: 2023-09-13 14:10:03 UTC
* Number of recursive dependencies: 100

Run `revdep_details(, "TriDimRegression")` for more info

</details>

## In both

*   checking whether package ‘TriDimRegression’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/TriDimRegression/new/TriDimRegression.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘TriDimRegression’ ...
** package ‘TriDimRegression’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘TriDimRegression’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/TriDimRegression/new/TriDimRegression.Rcheck/TriDimRegression’


```
### CRAN

```
* installing *source* package ‘TriDimRegression’ ...
** package ‘TriDimRegression’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘TriDimRegression’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/TriDimRegression/old/TriDimRegression.Rcheck/TriDimRegression’


```
# txshift

<details>

* Version: 0.3.8
* GitHub: https://github.com/nhejazi/txshift
* Source code: https://github.com/cran/txshift
* Date/Publication: 2022-02-09 22:30:02 UTC
* Number of recursive dependencies: 113

Run `revdep_details(, "txshift")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘sl3’
    ```

# UCSCXenaShiny

<details>

* Version: 1.1.10
* GitHub: https://github.com/openbiox/UCSCXenaShiny
* Source code: https://github.com/cran/UCSCXenaShiny
* Date/Publication: 2023-02-28 15:32:34 UTC
* Number of recursive dependencies: 193

Run `revdep_details(, "UCSCXenaShiny")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        doc        1.4Mb
        shinyapp   3.3Mb
    ```

# updog

<details>

* Version: 2.1.5
* GitHub: https://github.com/dcgerard/updog
* Source code: https://github.com/cran/updog
* Date/Publication: 2023-11-29 15:50:02 UTC
* Number of recursive dependencies: 151

Run `revdep_details(, "updog")` for more info

</details>

## In both

*   checking whether package ‘updog’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/updog/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/updog/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/updog/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/updog/new/updog.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        libs   7.3Mb
    ```

# variantspark

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/variantspark
* Date/Publication: 2019-06-13 16:20:03 UTC
* Number of recursive dependencies: 57

Run `revdep_details(, "variantspark")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# viewpoly

<details>

* Version: 0.3.2
* GitHub: https://github.com/mmollina/viewpoly
* Source code: https://github.com/cran/viewpoly
* Date/Publication: 2022-11-01 17:30:12 UTC
* Number of recursive dependencies: 155

Run `revdep_details(, "viewpoly")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
        5.   │ └─shinydashboard:::tagAssert(body, type = "div", class = "content-wrapper")
        6.   ├─shinydashboard::dashboardBody(...)
        7.   │ ├─htmltools::div(...)
        8.   │ │ └─rlang::dots_list(...)
        9.   │ └─tags$section(class = "content", ...)
       10.   │   └─rlang::dots_list(...)
    ...
      [ FAIL 1 | WARN 3 | SKIP 2 | PASS 27 ]
      Deleting unused snapshots:
      • tetra_example/effects-bar.svg
      • tetra_example/effects-circle.svg
      • tetra_example/effects-digenic.svg
      • tetra_example/linkage-map-draw-names.svg
      • tetra_example/plot-map-list.svg
      • tetra_example/qtl-plot.svg
      Error: Test failures
      Execution halted
    ```

# vip

<details>

* Version: 0.4.1
* GitHub: https://github.com/koalaverse/vip
* Source code: https://github.com/cran/vip
* Date/Publication: 2023-08-21 09:20:02 UTC
* Number of recursive dependencies: 105

Run `revdep_details(, "vip")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'C50', 'caret', 'Cubist', 'earth', 'gbm', 'glmnet', 'h2o',
      'lightgbm', 'mixOmics', 'mlr', 'mlr3', 'neuralnet', 'parsnip',
      'partykit', 'pls', 'randomForest', 'ranger', 'rpart', 'RSNNS',
      'sparklyr', 'tidymodels', 'workflows', 'xgboost'
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘randomForest’, ‘glmnet’, ‘C50’, ‘Cubist’, ‘caret’, ‘partykit’, ‘earth’, ‘gbm’, ‘h2o’, ‘sparklyr’, ‘ranger’, ‘rpart’, ‘xgboost’, ‘lightgbm’
    ```

# vmeasur

<details>

* Version: 0.1.4
* GitHub: NA
* Source code: https://github.com/cran/vmeasur
* Date/Publication: 2021-11-11 19:00:02 UTC
* Number of recursive dependencies: 119

Run `revdep_details(, "vmeasur")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘imager’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# WeightedCluster

<details>

* Version: 1.6-4
* GitHub: NA
* Source code: https://github.com/cran/WeightedCluster
* Date/Publication: 2023-07-07 07:50:02 UTC
* Number of recursive dependencies: 43

Run `revdep_details(, "WeightedCluster")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘WeightedCluster.Rnw’ using knitr
    --- finished re-building ‘WeightedCluster.Rnw’
    
    --- re-building ‘WeightedClusterFR.Rnw’ using knitr
    --- finished re-building ‘WeightedClusterFR.Rnw’
    
    --- re-building ‘WeightedClusterPreview.Rnw’ using knitr
    Error: processing vignette 'WeightedClusterPreview.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'WeightedClusterPreview.tex' failed.
    ...
    l.85 \usepackage
                    {tikz}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘WeightedClusterPreview.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘WeightedClusterPreview.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# wru

<details>

* Version: 3.0.1
* GitHub: https://github.com/kosukeimai/wru
* Source code: https://github.com/cran/wru
* Date/Publication: 2024-02-28 04:20:02 UTC
* Number of recursive dependencies: 96

Run `revdep_details(, "wru")` for more info

</details>

## In both

*   checking whether package ‘wru’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/globals/revdep/library/wru/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/wru/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/globals/revdep/library/wru/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/wru/new/wru.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        data   3.5Mb
        help   1.9Mb
        libs   2.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘tidyr’
      All declared Imports should be used.
    ```

# XNAString

<details>

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/XNAString
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 106

Run `revdep_details(, "XNAString")` for more info

</details>

## In both

*   checking compiled code ... WARNING
    ```
    File ‘XNAString/libs/XNAString.so’:
      Found ‘rand’, possibly from ‘rand’ (C)
        Object: ‘./ViennaRNA/utils/utils.o’
      Found ‘sprintf’, possibly from ‘sprintf’ (C)
        Objects: ‘./ViennaRNA/part_func_up.o’, ‘./ViennaRNA/RNAstruct.o’,
          ‘./ViennaRNA/model.o’
      Found ‘srand’, possibly from ‘srand’ (C)
        Object: ‘./ViennaRNA/utils/utils.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs nor [v]sprintf.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.2Mb
      sub-directories of 1Mb or more:
        doc    1.0Mb
        libs   9.5Mb
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

