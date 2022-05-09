# CRAN submission globals 0.15.0

on 2022-05-08

I've verified this submission has no negative impact on any of the 335 first- (n=11) and second-order (n=324) reverse package dependencies available on CRAN (n=335) and Bioconductor (n=21).

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version     | GitHub | R-hub    | mac/win-builder |
| ------------- | ------ | -------- | --------------- |
| 3.4.x         | L      |          |                 |
| 3.5.x         | L      |          |                 |
| 4.1.x         | L      |          |                 |
| 4.2.x         | L M W  | L M m1 W | M1 W            |
| devel         | L   W  | L        |    W            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platform = c(
  "debian-clang-devel", "debian-gcc-patched", "linux-x86_64-centos-epel",
  "macos-highsierra-release-cran",
  ## "macos-m1-bigsur-release", ## not available at the time of testing
  "windows-x86_64-release"))
print(res)
```

gives

```
── globals 0.15.0: OK

  Build ID:   globals_0.15.0.tar.gz-364b6857b1ec42c9b62021c9f309ad64
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  1m 14.5s ago
  Build time: 1m 12.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.15.0: OK

  Build ID:   globals_0.15.0.tar.gz-2cfc2aafe60f4988ab51c6a7f5e1b4a0
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  1m 14.5s ago
  Build time: 1m 7.6s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.15.0: OK

  Build ID:   globals_0.15.0.tar.gz-2fc07c3413ff4b17a243a9afaf470168
  Platform:   CentOS 8, stock R from EPEL
  Submitted:  1m 14.5s ago
  Build time: 1m 3.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.15.0: OK

  Build ID:   globals_0.15.0.tar.gz-05453409c7904389a8593879ec90a5c7
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  1m 14.5s ago
  Build time: 56.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.15.0: OK

  Build ID:   globals_0.15.0.tar.gz-40fc949108ce4893a958ab819d8952b6
  Platform:   Windows Server 2008 R2 SP1, R-release, 32/64 bit
  Submitted:  3m 16.8s ago
  Build time: 2m 23.6s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
