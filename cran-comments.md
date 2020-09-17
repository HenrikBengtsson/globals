# CRAN submission globals 0.13.0

on 2020-09-16

I've verified that this submission causes no issues for any of the 183 first and second-generation package dependencies on CRAN and Bioconductor.

Thank you


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version   | GitHub Actions | Travis CI | AppVeyor CI | Rhub      | Win-builder | Other  |
| ----------- | -------------- | --------- | ----------- | --------- | ----------- | ------ |
| 3.3.3       | L              |           |             |           |             |        |
| 3.4.4       | L              |           |             |           |             |        |
| 3.5.3       | L              |           |             |           |             |        |
| 3.6.3       | L              | L,        |             |    S (32) |             |        |
| 4.0.2       | L, M, W        | L, M      | W           |           | W           |        |
| devel       |       W        | L, M      | W (32 & 64) | W         | W           |        |

*Legend: OS: L = Linux, S = Solaris, M = macOS, W = Windows.  Architecture: 32 = 32-bit, 64 = 64-bit*
