# CRAN submission globals 0.16.2

on 2022-11-21

I've verified this submission has no negative impact on any of the 411 first- and second-order reverse package dependencies available on CRAN (n = 386) and Bioconductor (n = 25).

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version     | GitHub | R-hub  | mac/win-builder |
| ------------- | ------ | ------ | --------------- |
| 3.4.x         | L      |        |                 |
| 4.0.x         | L      |        |                 |
| 4.1.x         | L M W  |        |                 |
| 4.2.x         | L M W  | L M W  | M1 W            |
| devel         | L M W  | L      |    W            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platforms = c(
  "debian-clang-devel", 
  "fedora-gcc-devel",
  "debian-gcc-patched", 
  "macos-highsierra-release-cran",
  "windows-x86_64-release"
))
print(res)
```

gives

```
── globals 0.16.2: OK

  Build ID:   globals_0.16.2.tar.gz-3ef9ef74984242d69e4c2db19c872a73
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  6m 27.8s ago
  Build time: 6m 16.2s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.16.2: OK

  Build ID:   globals_0.16.2.tar.gz-db2de2b5b6504cd59730a0878d3fe841
  Platform:   Fedora Linux, R-devel, GCC
  Submitted:  6m 27.8s ago
  Build time: 4m 7.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.16.2: OK

  Build ID:   globals_0.16.2.tar.gz-06c50c36d9d1497d93e3183762152886
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  6m 27.8s ago
  Build time: 5m 53.1s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.16.2: OK

  Build ID:   globals_0.16.2.tar.gz-e6456429b06c447a8259cb5e6748d207
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  6m 27.8s ago
  Build time: 1m 29.2s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.16.2: OK

  Build ID:   globals_0.16.2.tar.gz-d9a8c0ff41d2429d838f6aa330b45e56
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  6m 27.9s ago
  Build time: 2m 32.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
