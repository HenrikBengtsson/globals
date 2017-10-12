options(warn = 1)

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

reset <- isTRUE(as.logical(toupper(Sys.getenv("_R_CHECK_REVDEP_RESET_", "FALSE"))))
revdep_framework <- Sys.getenv("_R_CHECK_REVDEP_", "revdepcheck")
if (revdep_framework == "devtools") {
  library("devtools")
  if (reset) revdep_check_reset()
  revdep_check(bioconductor = TRUE, recursive = FALSE, threads = availableCores())
  revdep_check_save_summary()
  revdep_check_print_problems()
} else if (revdep_framework == "revdepcheck") {
  library("revdepcheck")
  if (reset) revdep_reset()
  timeout <- as.difftime(30, units = "mins")
  revdep_check(num_workers = availableCores(), timeout = timeout, quiet = FALSE,
               bioc = TRUE)

  ## AD HOC: revdeptools doesn't support recursive checking, so we have to
  ## manually specify recursive revdep packages we wish to check.
  packages <- c(
    ## Reverse depends (of future):
    "doFuture", "future.BatchJobs", "future.batchtools", "pbmcapply",
    ## Reverse imports (of future):
    "aroma.affymetrix", "aroma.core", "fiery", "googleComputeEngineR",
    "kernelboot", "multiApply", "origami", "PSCBS", "R.filesets", "sperrorest",
    "startR",
    ## Reverse sugggests (of future):
    ## "brms", ## skip takes a very long time
    "penaltyLearning"
  )
  revdep_add(packages = packages)
  revdep_check(num_workers = availableCores(), timeout = timeout, quiet = FALSE)
} else {	       
  stop("Unknown revdep framework: ", revdep_framework)
}
