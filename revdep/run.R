library("revdepcheck")
options(warn = 1L)

availableCores <- function() {
  getenv <- function(name) {
    as.integer(Sys.getenv(name, NA_character_))
  }
  getopt <- function(name) {
    as.integer(getOption(name, NA_integer_))
  }
  if (is.finite(n <- getopt("mc.cores") + 1L)) return(n)
  if (is.finite(n <- getopt("Ncpus") + 1L)) return(n)
  if (is.finite(n <- getenv("PBS_NUM_PPN"))) return(n)
  if (is.finite(n <- getenv("SLURM_CPUS_PER_TASK"))) return(n)
  if (is.finite(n <- getenv("NSLOTS"))) return(n)
  1L
}

if (file_test("-f", p <- Sys.getenv("R_CHECK_ENVIRON", "~/.R/check.Renviron"))) {
  cat(sprintf("R CMD check will use env vars from %s\n", sQuote(p)))
  cat(sprintf("To disable, set 'R_CHECK_ENVIRON=false' (a fake pathname)\n"))
}

revdep_check(num_workers = availableCores(),
             timeout = as.difftime(20, units = "mins"),
             quiet = FALSE, bioc = TRUE)

## AD HOC: revdeptools doesn't support recursive checking, so we have to
## manually specify recursive revdep packages we wish to check **that has
## not already been tested above**.
packages <- c(
  ## Reverse depends (of future):
  "doFuture",
  "future.BatchJobs", "future.batchtools", "future.callr",
  "pbmcapply",
  ## Reverse imports (of future):
  "aroma.affymetrix", "aroma.core", "civis", "codebook", "drake", "fiery",
  "googleComputeEngineR", "kernelboot", "lidR", "MetamapsDB", "origami",
  "PSCBS", "robotstxt", "sperrorest", "startR",
  ## Reverse sugggests (of future):
  ## "brms", ## skip takes a very long time
  "penaltyLearning", "promises", "R.filesets"
)
revdep_add(packages = packages)
revdep_check(num_workers = availableCores(),
             timeout = as.difftime(20, units = "mins"),
             quiet = FALSE, bioc = TRUE)
