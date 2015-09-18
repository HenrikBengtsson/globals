# CRAN submission globals 0.4.0
on 2015-09-17

This release addresses one R/CRAN related issue:

* Explicit import of 'utils' functions.

Thanks in advance


## Notes not sent to CRAN
PSCBS have been verified using `R CMD check --as-cran` on:

* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 3.1.2 (2014-10-31)
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.2 (2015-08-14)
  - R version 3.2.2 Patched (2015-09-13 r69384)

* Platform: x86_64-apple-darwin13.4.0 (64-bit):
  - R version 3.2.2 Patched (2015-09-05 r69301)

* Platform x86_64-w64-mingw32/x64 (64-bit):
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.2 Patched (2015-09-13 r69380)
  - R Under development (unstable) (2015-09-16 r69392)

It has also verified using the <http://win-builder.r-project.org/> service.

Moreover, the updates cause no issues for any of the following
1 reverse dependency on CRAN, which have been tested with
`R CMD check --as-cran`: future 0.4.0
