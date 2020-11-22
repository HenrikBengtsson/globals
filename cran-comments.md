# CRAN submission globals 0.14.0

on 2020-11-22

I've verified that this submission causes no issues for any of the 194 first and second-generation package dependencies on CRAN (n=185) and Bioconductor (n=9).

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version   | GitHub Actions | Travis CI | AppVeyor CI | Rhub      | Win-builder | Other  |
| ----------- | -------------- | --------- | ----------- | --------- | ----------- | ------ |
| 3.3.*       | L              |           |             |           |             |        |
| 3.4.*       | L              |           |             |           |             |        |
| 3.5.*       | L              |           |             |           |             |        |
| 3.6.*       | L              | L,        |             |    S (32) |             |        |
| 4.0.*       | L, M, W        | L, M      | W           |           | W           |        |
| devel       |       W        | L, M      | W (32 & 64) | W         | W           |        |

*Legend: OS: L = Linux, S = Solaris, M = macOS, W = Windows.  Architecture: 32 = 32-bit, 64 = 64-bit*
