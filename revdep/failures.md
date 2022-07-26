# ChromSCape

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
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c pool_size_factors.cpp -o pool_size_factors.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c sum_counts.cpp -o sum_counts.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o scuttle.so RcppExports.o cumulative_prop.o downsample_counts.o fit_linear_model.o pool_size_factors.o sum_counts.o utils.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c adjust_shift_variance.cpp -o adjust_shift_variance.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c find_mutual_nns.cpp -o find_mutual_nns.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c smooth_gaussian_kernel.cpp -o smooth_gaussian_kernel.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o batchelor.so RcppExports.o adjust_shift_variance.o find_mutual_nns.o smooth_gaussian_kernel.o utils.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beeswarm’ ...
* DONE (beeswarm)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *source* package ‘BiocGenerics’ ...
** using staged installation
** R
** inst
...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location


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
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c pool_size_factors.cpp -o pool_size_factors.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c sum_counts.cpp -o sum_counts.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG -I../inst/include/ -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/beachmat/include' -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o scuttle.so RcppExports.o cumulative_prop.o downsample_counts.o fit_linear_model.o pool_size_factors.o sum_counts.o utils.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c adjust_shift_variance.cpp -o adjust_shift_variance.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c find_mutual_nns.cpp -o find_mutual_nns.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c smooth_gaussian_kernel.cpp -o smooth_gaussian_kernel.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/ChromSCape/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c utils.cpp -o utils.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o batchelor.so RcppExports.o adjust_shift_variance.o find_mutual_nns.o smooth_gaussian_kernel.o utils.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘beeswarm’ ...
* DONE (beeswarm)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *source* package ‘BiocGenerics’ ...
** using staged installation
** R
** inst
...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location


```
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
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (AnnotationForge)
* installing *source* package ‘BiocFileCache’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading


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
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (AnnotationForge)
* installing *source* package ‘BiocFileCache’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading


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
# Prostar

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
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c Spectrum1_class.c -o Spectrum1_class.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c Spectrum2_class.c -o Spectrum2_class.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c imp_neighbour_avg.cpp -o imp_neighbour_avg.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c utils.c -o utils.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o MSnbase.so RcppExports.o Spectrum1_class.o Spectrum2_class.o imp_neighbour_avg.o utils.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Creating a new generic function for ‘trimws’ in package ‘MSnbase’
in method for ‘coerce’ with signature ‘"MSnSet","SummarizedExperiment"’: no definition for class “SummarizedExperiment”
in method for ‘coerce’ with signature ‘"SummarizedExperiment","MSnSet"’: no definition for class “SummarizedExperiment”
in method for ‘coerce’ with signature ‘"IBSpectra","MSnSet"’: no definition for class “IBSpectra”
in method for ‘plotMzDelta’ with signature ‘"mzRramp"’: no definition for class “mzRramp”


* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘BH’ ...
* DONE (BH)
...
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (DAPAR)

The downloaded source packages are in
	‘/scratch/henrik/733445/RtmpGBE9Fc/downloaded_packages’


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
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c Spectrum1_class.c -o Spectrum1_class.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c Spectrum2_class.c -o Spectrum2_class.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c imp_neighbour_avg.cpp -o imp_neighbour_avg.o
gcc -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/Prostar/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c utils.c -o utils.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o MSnbase.so RcppExports.o Spectrum1_class.o Spectrum2_class.o imp_neighbour_avg.o utils.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR
Creating a new generic function for ‘trimws’ in package ‘MSnbase’
in method for ‘coerce’ with signature ‘"MSnSet","SummarizedExperiment"’: no definition for class “SummarizedExperiment”
in method for ‘coerce’ with signature ‘"SummarizedExperiment","MSnSet"’: no definition for class “SummarizedExperiment”
in method for ‘coerce’ with signature ‘"IBSpectra","MSnSet"’: no definition for class “IBSpectra”
in method for ‘plotMzDelta’ with signature ‘"mzRramp"’: no definition for class “mzRramp”


* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘BH’ ...
* DONE (BH)
...
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (DAPAR)

The downloaded source packages are in
	‘/scratch/henrik/733445/RtmpGBE9Fc/downloaded_packages’


```
# scDiffCom

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
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c choose_effect_size.cpp -o choose_effect_size.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c combine_rho.cpp -o combine_rho.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c compute_blocked_stats.cpp -o compute_blocked_stats.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c compute_residual_stats.cpp -o compute_residual_stats.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c compute_rho_null.cpp -o compute_rho_null.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c cyclone_scores.cpp -o cyclone_scores.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c overlap_exprs.cpp -o overlap_exprs.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c rand_custom.cpp -o rand_custom.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o scran.so RcppExports.o choose_effect_size.o combine_rho.o compute_blocked_stats.o compute_residual_stats.o compute_rho_null.o cyclone_scores.o overlap_exprs.o rand_custom.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *source* package ‘BiocGenerics’ ...
** using staged installation
...
* DONE (scran)
* installing *binary* package ‘Seurat’ ...
* DONE (Seurat)
* installing *binary* package ‘ontoProc’ ...
* DONE (ontoProc)
* installing *binary* package ‘SingleCellSignalR’ ...
* DONE (SingleCellSignalR)

The downloaded source packages are in
	‘/scratch/henrik/733445/RtmpcePRC4/downloaded_packages’


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
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c choose_effect_size.cpp -o choose_effect_size.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c combine_rho.cpp -o combine_rho.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c compute_blocked_stats.cpp -o compute_blocked_stats.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c compute_residual_stats.cpp -o compute_residual_stats.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c compute_rho_null.cpp -o compute_rho_null.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c cyclone_scores.cpp -o cyclone_scores.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c overlap_exprs.cpp -o overlap_exprs.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/Rcpp/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/beachmat/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/BH/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/dqrng/include' -I'/c4/home/henrik/repositories/globals/revdep/library/scDiffCom/scuttle/include' -I/usr/local/include   -fpic  -g -O2  -c rand_custom.cpp -o rand_custom.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -L/usr/local/lib64 -o scran.so RcppExports.o choose_effect_size.o combine_rho.o compute_blocked_stats.o compute_residual_stats.o compute_rho_null.o cyclone_scores.o overlap_exprs.o rand_custom.o -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRlapack -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lRblas -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.0-gcc10/lib64/R/lib -lR


* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘assertthat’ ...
* DONE (assertthat)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘BH’ ...
* DONE (BH)
* installing *source* package ‘BiocGenerics’ ...
** using staged installation
...
* DONE (scran)
* installing *binary* package ‘Seurat’ ...
* DONE (Seurat)
* installing *binary* package ‘ontoProc’ ...
* DONE (ontoProc)
* installing *binary* package ‘SingleCellSignalR’ ...
* DONE (SingleCellSignalR)

The downloaded source packages are in
	‘/scratch/henrik/733445/RtmpcePRC4/downloaded_packages’


```
