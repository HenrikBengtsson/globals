# MineICA

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/globals
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
Creating a generic function for ‘eapply’ from package ‘base’ in package ‘AnnotationDbi’
Creating a generic function for ‘exists’ from package ‘base’ in package ‘AnnotationDbi’
Creating a generic function for ‘sample’ from package ‘base’ in package ‘AnnotationDbi’
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c IRanges_stubs.c -o IRanges_stubs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c R_init_GenomicAlignments.c -o R_init_GenomicAlignments.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c S4Vectors_stubs.c -o S4Vectors_stubs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c cigar_utils.c -o cigar_utils.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c coordinate_mapping_methods.c -o coordinate_mapping_methods.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c encodeOverlaps_methods.c -o encodeOverlaps_methods.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o GenomicAlignments.so IRanges_stubs.o R_init_GenomicAlignments.o S4Vectors_stubs.o cigar_utils.o coordinate_mapping_methods.o encodeOverlaps_methods.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beanplot’ ...
* DONE (beanplot)
* installing *binary* package ‘BH’ ...
* DONE (BH)
...
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (GenomicAlignments)
* installing *binary* package ‘readr’ ...
* DONE (readr)
* installing *binary* package ‘tidyr’ ...
* DONE (tidyr)
* installing *binary* package ‘viridis’ ...
* DONE (viridis)


```
### CRAN

```
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
...
Creating a generic function for ‘eapply’ from package ‘base’ in package ‘AnnotationDbi’
Creating a generic function for ‘exists’ from package ‘base’ in package ‘AnnotationDbi’
Creating a generic function for ‘sample’ from package ‘base’ in package ‘AnnotationDbi’
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c IRanges_stubs.c -o IRanges_stubs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c R_init_GenomicAlignments.c -o R_init_GenomicAlignments.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c S4Vectors_stubs.c -o S4Vectors_stubs.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c cigar_utils.c -o cigar_utils.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c coordinate_mapping_methods.c -o coordinate_mapping_methods.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/S4Vectors/include' -I'/c4/home/henrik/repositories/globals/revdep/library/MineICA/IRanges/include' -I/usr/local/include   -fpic  -g -O2  -c encodeOverlaps_methods.c -o encodeOverlaps_methods.o
gcc -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o GenomicAlignments.so IRanges_stubs.o R_init_GenomicAlignments.o S4Vectors_stubs.o cigar_utils.o coordinate_mapping_methods.o encodeOverlaps_methods.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beanplot’ ...
* DONE (beanplot)
* installing *binary* package ‘BH’ ...
* DONE (BH)
...
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (GenomicAlignments)
* installing *binary* package ‘readr’ ...
* DONE (readr)
* installing *binary* package ‘tidyr’ ...
* DONE (tidyr)
* installing *binary* package ‘viridis’ ...
* DONE (viridis)


```
# oolong

<details>

* Version: 0.4.1
* GitHub: https://github.com/chainsawriot/oolong
* Source code: https://github.com/cran/oolong
* Date/Publication: 2021-11-09 10:20:11 UTC
* Number of recursive dependencies: 151

Run `revdep_details(, "oolong")` for more info

</details>

## In both

*   checking whether package ‘oolong’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/oolong/new/oolong.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘oolong’ ...
** package ‘oolong’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘text2vec’ is not available and has been replaced
by .GlobalEnv when processing object ‘abstracts_warplda’
Warning: namespace ‘text2vec’ is not available and has been replaced
by .GlobalEnv when processing object ‘abstracts_warplda’
Error in normalize(self$components, "l1") : 
  could not find function "normalize"
ERROR: lazydata failed for package ‘oolong’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/oolong/new/oolong.Rcheck/oolong’


```
### CRAN

```
* installing *source* package ‘oolong’ ...
** package ‘oolong’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
Warning: namespace ‘text2vec’ is not available and has been replaced
by .GlobalEnv when processing object ‘abstracts_warplda’
Warning: namespace ‘text2vec’ is not available and has been replaced
by .GlobalEnv when processing object ‘abstracts_warplda’
Error in normalize(self$components, "l1") : 
  could not find function "normalize"
ERROR: lazydata failed for package ‘oolong’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/oolong/old/oolong.Rcheck/oolong’


```
# pareg

<details>

* Version: 1.0.0
* GitHub: https://github.com/cbg-ethz/pareg
* Source code: https://github.com/cran/pareg
* Date/Publication: 2022-04-26
* Number of recursive dependencies: 258

Run `revdep_details(, "pareg")` for more info

</details>

## In both

*   checking whether package ‘pareg’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/globals/revdep/checks/pareg/new/pareg.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘pareg’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Biostrings’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘pareg’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/pareg/new/pareg.Rcheck/pareg’


```
### CRAN

```
* installing *source* package ‘pareg’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘Biostrings’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘pareg’
* removing ‘/c4/home/henrik/repositories/globals/revdep/checks/pareg/old/pareg.Rcheck/pareg’


```
