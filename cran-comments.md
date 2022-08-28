# CRAN submission globals 0.16.1

on 2022-08-28

I've verified this submission has no negative impact on any of the 392 first- and second-order reverse package dependencies available on CRAN and Bioconductor.

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version     | GitHub | R-hub    | mac/win-builder |
| ------------- | ------ | -------- | --------------- |
| 3.4.x         | L      |          |                 |
| 4.0.x         | L      |          |                 |
| 4.1.x         | L M W  |          |                 |
| 4.2.x         | L M W  | L M M1 W | M1 W            |
| devel         | L M W  | L        |    W            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platform = c(
  "debian-clang-devel", "debian-gcc-patched", "linux-x86_64-rocker-gcc-san",
  "macos-highsierra-release-cran", "macos-m1-bigsur-release",
  "windows-x86_64-release"))
print(res)
```

gives

```
── globals 0.16.1: OK

  Build ID:   globals_0.16.1.tar.gz-8beb1022c2bf45ccb62d2fac27b9bcd7
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  2m 42.5s ago
  Build time: 1m 56.2s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.16.1: OK

  Build ID:   globals_0.16.1.tar.gz-c1e9ed6df90c4d2892eb42851fd76038
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  2m 42.5s ago
  Build time: 2m 1.1s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.16.1: OK

  Build ID:   globals_0.16.1.tar.gz-d3eaaacce24b443babd2fc41d9b22fe8
  Platform:   Debian Linux, R-devel, GCC ASAN/UBSAN
  Submitted:  2m 42.6s ago
  Build time: 1m 25s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.16.1: OK

  Build ID:   globals_0.16.1.tar.gz-695e50ec5f804cd6ad2a414ac9782a1a
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  2m 42.6s ago
  Build time: 1m 10.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.16.1: OK

  Build ID:   globals_0.16.1.tar.gz-2b1bfd2ecb7e4bdc8303224f64bbf197
  Platform:   Apple Silicon (M1), macOS 11.6 Big Sur, R-release
  Submitted:  2m 42.6s ago
  Build time: 44.5s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── globals 0.16.1: OK

  Build ID:   globals_0.16.1.tar.gz-e0f43b4064a740f585a30d1d9fe443c2
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  3m 17.7s ago
  Build time: 2m 56.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
