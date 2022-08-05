# CRAN submission globals 0.16.0

on 2022-08-05

I've verified this submission has no negative impact on any of the 384 first- and second-order reverse package dependencies available on CRAN and Bioconductor.

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version     | GitHub | R-hub    | mac/win-builder |
| ------------- | ------ | -------- | --------------- |
| 3.4.x         | L      |          |                 |
| 3.6.x         | L      |          |                 |
| 4.1.x         | L      |          |                 |
| 4.2.x         | L M W  | L M M1 W |  . W            |
| devel         | L   W  | L        |    W            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platform = c(
#  "debian-clang-devel", "debian-gcc-patched", "linux-x86_64-centos-epel",
  "macos-highsierra-release-cran", "macos-m1-bigsur-release",
  "windows-x86_64-release"))
print(res)
```

gives

```
── globals 0.16.0: OK

  Build ID:   globals_0.16.0.tar.gz-6f9308c066dc40a7b3c163c2a789f31e
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  2m 37.3s ago
  Build time: 1m 1.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.16.0: OK

  Build ID:   globals_0.16.0.tar.gz-17a62296f41041ee8eb488a3586a254f
  Platform:   Apple Silicon (M1), macOS 11.6 Big Sur, R-release
  Submitted:  2m 37.3s ago
  Build time: 33.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.16.0: OK

  Build ID:   globals_0.16.0.tar.gz-77e0b3148d2342c5a8a8502c12e74bb6
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  31m 44.6s ago
  Build time: 3m 53.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
