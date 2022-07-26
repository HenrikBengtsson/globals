# bonsai

<details>

* Version: 0.1.0
* GitHub: https://github.com/tidymodels/bonsai
* Source code: https://github.com/cran/bonsai
* Date/Publication: 2022-06-23 07:20:02 UTC
* Number of recursive dependencies: 124

Run `revdep_details(, "bonsai")` for more info

</details>

## In both

*   R CMD check timed out
    

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
gcc -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o rtracklayer.so S4Vectors_stubs.o IRanges_stubs.o XVector_stubs.o R_init_rtracklayer.o readGFF.o bbiHelper.o bigWig.o bigBedHelper.o bigBed.o chain_io.o twoBit.o handlers.o utils.o ucsc/memgfx.o ucsc/aliType.o ucsc/binRange.o ucsc/htmlColor.o ucsc/sqlList.o ucsc/tokenizer.o ucsc/asParse.o ucsc/basicBed.o ucsc/bigBed.o ucsc/bPlusTree.o ucsc/bbiRead.o ucsc/bbiWrite.o ucsc/bwgCreate.o ucsc/bwgQuery.o ucsc/cirTree.o ucsc/common.o ucsc/dnaseq.o ucsc/dnautil.o ucsc/errAbort.o ucsc/hash.o ucsc/linefile.o ucsc/localmem.o ucsc/sqlNum.o ucsc/zlibFace.o ucsc/dystring.o ucsc/hmmstats.o ucsc/obscure.o ucsc/pipeline.o ucsc/rangeTree.o ucsc/rbTree.o ucsc/memalloc.o ucsc/dlist.o ucsc/hex.o ucsc/filePath.o ucsc/htmlPage.o ucsc/udc.o ucsc/net.o ucsc/bits.o ucsc/twoBit.o ucsc/_cheapcgi.o ucsc/internet.o ucsc/https.o ucsc/base64.o ucsc/verbose.o ucsc/os.o ucsc/wildcmp.o ucsc/_portimpl.o -lz -pthread -lssl -lcrypto -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
Creating a generic function for ‘offset’ from package ‘stats’ in package ‘rtracklayer’
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c half_range_mode.cpp -o half_range_mode.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nd.c -o nd.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pAUC.c -o pAUC.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR


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
* installing *source* package ‘minfi’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location


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
gcc -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o rtracklayer.so S4Vectors_stubs.o IRanges_stubs.o XVector_stubs.o R_init_rtracklayer.o readGFF.o bbiHelper.o bigWig.o bigBedHelper.o bigBed.o chain_io.o twoBit.o handlers.o utils.o ucsc/memgfx.o ucsc/aliType.o ucsc/binRange.o ucsc/htmlColor.o ucsc/sqlList.o ucsc/tokenizer.o ucsc/asParse.o ucsc/basicBed.o ucsc/bigBed.o ucsc/bPlusTree.o ucsc/bbiRead.o ucsc/bbiWrite.o ucsc/bwgCreate.o ucsc/bwgQuery.o ucsc/cirTree.o ucsc/common.o ucsc/dnaseq.o ucsc/dnautil.o ucsc/errAbort.o ucsc/hash.o ucsc/linefile.o ucsc/localmem.o ucsc/sqlNum.o ucsc/zlibFace.o ucsc/dystring.o ucsc/hmmstats.o ucsc/obscure.o ucsc/pipeline.o ucsc/rangeTree.o ucsc/rbTree.o ucsc/memalloc.o ucsc/dlist.o ucsc/hex.o ucsc/filePath.o ucsc/htmlPage.o ucsc/udc.o ucsc/net.o ucsc/bits.o ucsc/twoBit.o ucsc/_cheapcgi.o ucsc/internet.o ucsc/https.o ucsc/base64.o ucsc/verbose.o ucsc/os.o ucsc/wildcmp.o ucsc/_portimpl.o -lz -pthread -lssl -lcrypto -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR
Creating a generic function for ‘offset’ from package ‘stats’ in package ‘rtracklayer’
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c half_range_mode.cpp -o half_range_mode.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nd.c -o nd.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pAUC.c -o pAUC.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowPAUCs.c -o rowPAUCs.o
gcc -I"/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c rowttests.c -o rowttests.o
gfortran -fno-optimize-sibling-calls  -fpic  -g -O2  -c ttest.f -o ttest.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -L/usr/local/lib64 -o genefilter.so half_range_mode.o init.o nd.o pAUC.o rowPAUCs.o rowttests.o ttest.o -lgfortran -lm -lquadmath -L/software/c4/cbi/software/R-4.2.1-gcc10/lib64/R/lib -lR


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
* installing *source* package ‘minfi’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location


```
# oolong

<details>

* Version: 0.4.1
* GitHub: https://github.com/chainsawriot/oolong
* Source code: https://github.com/cran/oolong
* Date/Publication: 2021-11-09 10:20:11 UTC
* Number of recursive dependencies: 152

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
