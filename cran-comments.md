# CRAN submission globals 0.16.3

on 2024-03-07

I've verified this submission has no negative impact on any of the 533 first- and second-order reverse package dependencies available on CRAN (n = 501) and Bioconductor (n = 31).

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version     | GitHub | R-hub  | mac/win-builder |
| ------------- | ------ | ------ | --------------- |
| 3.5.x         | L      |        |                 |
| 4.1.x         | L      |        |                 |
| 4.2.x         | L   W  |        |    W            |
| 4.3.x         | L M W  | L M W  | M1 W            |
| devel         | L   W  | L      |    W            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platforms = c(
  "debian-clang-devel", 
  "fedora-gcc-devel",
  "debian-gcc-patched", 
  "windows-x86_64-release"
))
print(res)
```

gives

```
── globals 0.16.3: OK

  Build ID:   globals_0.16.3.tar.gz-a10e60dbad7d4556b1d12030972a0c8d
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  5m 35s ago
  Build time: 5m 31.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.16.3: OK

  Build ID:   globals_0.16.3.tar.gz-e327dcdee70048cf9b0605088d22ad66
  Platform:   Fedora Linux, R-devel, GCC
  Submitted:  5m 35s ago
  Build time: 3m 57.7s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.16.3: OK

  Build ID:   globals_0.16.3.tar.gz-1c0bb85379b44920bdedde4805ecb350
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  5m 35s ago
  Build time: 5m 14.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.16.3: OK

  Build ID:   globals_0.16.3.tar.gz-bc7155e5d2d84c6e91b5c72eed8c2863
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  5m 35s ago
  Build time: 2m 32.5s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
> res

── globals 0.16.3: OK

  Build ID:   globals_0.16.3.tar.gz-a10e60dbad7d4556b1d12030972a0c8d
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  17m 34s ago
  Build time: 5m 31.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.16.3: OK

  Build ID:   globals_0.16.3.tar.gz-e327dcdee70048cf9b0605088d22ad66
  Platform:   Fedora Linux, R-devel, GCC
  Submitted:  17m 34s ago
  Build time: 3m 57.7s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.16.3: OK

  Build ID:   globals_0.16.3.tar.gz-1c0bb85379b44920bdedde4805ecb350
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  17m 34s ago
  Build time: 5m 14.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.16.3: OK

  Build ID:   globals_0.16.3.tar.gz-bc7155e5d2d84c6e91b5c72eed8c2863
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  17m 34s ago
  Build time: 2m 32.5s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
