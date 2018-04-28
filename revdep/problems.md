# aroma.affymetrix

Version: 3.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.2Mb
      sub-directories of 1Mb or more:
        R             6.6Mb
        help          1.1Mb
        testScripts   1.3Mb
    ```

# aroma.core

Version: 3.1.2

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘sfit’ ‘expectile’ ‘HaarSeg’ ‘mpcbs’
    ```

# codebook

Version: 0.5.8

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘graphics’ ‘pander’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘labelled’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 65 marked UTF-8 strings
    ```

# fiery

Version: 1.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘desc’
      All declared Imports should be used.
    ```

# lidR

Version: 1.4.2

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘mapview’ ‘mapedit’
    
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

*   checking examples ... ERROR
    ```
    Running examples in ‘penaltyLearning-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: featureMatrix
    > ### Title: featureMatrix
    > ### Aliases: featureMatrix
    > 
    > ### ** Examples
    > 
    > 
    > data(neuroblastoma, package="neuroblastoma", envir=environment())
    Error in find.package(package, lib.loc, verbose = verbose) : 
      there is no package called ‘neuroblastoma’
    Calls: data -> find.package
    Execution halted
    ```

# promises

Version: 1.0.1

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘purrr’
    ```

# PSCBS

Version: 0.63.0

## In both

*   checking examples ... ERROR
    ```
    ...
      chromosome tcnId dhId     start       end tcnNbrOfLoci tcnMean tcnNbrOfSNPs
    1          1     1    1    554484 143663981         1880  1.3916          778
    2          1     2    1 143663981 185240536          671  2.0925          275
    3          1     3    1 185240536 246679946         1111  2.6545          417
      tcnNbrOfHets dhNbrOfLoci    dhMean    c1Mean    c2Mean
    1          778         778 0.4009957 0.4167872 0.9748128
    2          275         275 0.2344486 0.8009582 1.2915418
    3          417         417 0.2819897 0.9529792 1.7015208
    > 
    > 
    > # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    > # Calling segments in allelic balance (AB)
    > # NOTE: Ideally, this should be done on whole-genome data
    > # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    > # Explicitly estimate the threshold in DH for calling AB
    > # (which be done by default by the caller, if skipped here)
    > deltaAB <- estimateDeltaAB(fit, flavor="qq(DH)", verbose=verbose)
    Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
      there is no package called ‘survival’
    Calls: estimateDeltaAB ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        R         3.0Mb
        data-ex   2.6Mb
    ```

# sperrorest

Version: 2.1.5

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RSAGA’
    ```

