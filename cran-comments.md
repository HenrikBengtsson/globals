# CRAN submission globals 0.15.1

on 2022-06-24

I've verified this submission has no negative impact on any of the 370 first- and second-order reverse package dependencies available on CRAN and Bioconductor.

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version     | GitHub | R-hub    | mac/win-builder |
| ------------- | ------ | -------- | --------------- |
| 3.4.x         | L      |          |                 |
| 3.6.x         | L      |          |                 |
| 4.1.x         | L      |          |                 |
| 4.2.x         | L M W  | L M M1 W | M1 W            |
| devel         | L   W  | L        |    W            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platform = c(
  "debian-clang-devel", "debian-gcc-patched", "linux-x86_64-centos-epel",
  "macos-highsierra-release-cran", "macos-m1-bigsur-release",
  "windows-x86_64-release"))
print(res)
```

gives

```
── globals 0.15.0-9001: OK

  Build ID:   globals_0.15.0-9001.tar.gz-0cf8cfe229e846969affd4b286c40b0f
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  1m 41s ago
  Build time: 1m 37.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.15.0-9001: OK

  Build ID:   globals_0.15.0-9001.tar.gz-82348b71fbfa45de9e08850f8484b506
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  1m 41s ago
  Build time: 1m 30.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.15.0-9001: OK

  Build ID:   globals_0.15.0-9001.tar.gz-eb37218443234e02957981dd08a6baa6
  Platform:   CentOS 8, stock R from EPEL
  Submitted:  1m 41s ago
  Build time: 1m 25.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.15.0-9001: OK

  Build ID:   globals_0.15.0-9001.tar.gz-9359313fcc4d4255a7c72625551ebf54
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  1m 41s ago
  Build time: 1m 1.2s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.15.0-9001: OK

  Build ID:   globals_0.15.0-9001.tar.gz-04c8cb9b8ee343c59188227a6ec8c1ef
  Platform:   Apple Silicon (M1), macOS 11.6 Big Sur, R-release
  Submitted:  1m 41.1s ago
  Build time: 35.1s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.15.0-9001: IN-PROGRESS

  Build ID:   globals_0.15.0-9001.tar.gz-e40324089d0d48699529a6f9cca8075c
  Platform:   Windows Server 2008 R2 SP1, R-release, 32/64 bit
  Submitted:  1m 41.1s ago
```
