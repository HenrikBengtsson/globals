# CRAN submission globals 0.15.0

on 2022-05-07

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
| 4.2.x         | L M W  | L M m1 W | M1 w            |
| devel         | L      | L        |    W            |

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
── globals 0.14.0-9004: OK

  Build ID:   globals_0.14.0-9004.tar.gz-7f3ae44d069241b4a32441f700b5cc37
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  1m 39s ago
  Build time: 1m 14.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.14.0-9004: OK

  Build ID:   globals_0.14.0-9004.tar.gz-4eb7c4b9932748e68b4b02306acb6cef
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  1m 39s ago
  Build time: 1m 6.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.14.0-9004: OK

  Build ID:   globals_0.14.0-9004.tar.gz-2c4e42c75793459786b58e95442353a7
  Platform:   CentOS 8, stock R from EPEL
  Submitted:  1m 39s ago
  Build time: 1m 5s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.14.0-9004: OK

  Build ID:   globals_0.14.0-9004.tar.gz-4daeced4d1b34cb1ad62b62f59b0ce7a
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  1m 39s ago
  Build time: 56s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.14.0-9004: CREATED

  Build ID:   globals_0.14.0-9004.tar.gz-6108383694c04a4cb4f135f2f6ea8644
  Platform:   Apple Silicon (M1), macOS 11.6 Big Sur, R-release
  Submitted:  1m 39s ago
  Build time: ??

── globals 0.14.0-9004: OK

  Build ID:   globals_0.14.0-9004.tar.gz-e620b7275f0e4d25978eac90f8eec526
  Platform:   Windows Server 2008 R2 SP1, R-release, 32/64 bit
  Build time: ??

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
