library("revdepcheck")

availableCores <- function() {
  getenv <- function(name) as.integer(Sys.getenv(name, NA_character_))
  getopt <- function(name) as.integer(getOption(name, NA_integer_))
  if (is.finite(n <- getopt("mc.cores") + 1L)) return(n)
  if (is.finite(n <- getopt("Ncpus") + 1L)) return(n)
  if (is.finite(n <- getenv("PBS_NUM_PPN"))) return(n)
  if (is.finite(n <- getenv("SLURM_CPUS_PER_TASK"))) return(n)
  if (is.finite(n <- getenv("NSLOTS"))) return(n)
  1L
}

num_workers <- availableCores()
message("Number of workers: ", num_workers)

packages <- c(
  "doFuture", "future.BatchJobs", "future.batchtools", "pbmcapply",
  "aroma.affymetrix", "aroma.core", "fiery", "googleComputeEngineR", "kernelboot", "multiApply", "origami", "PSCBS", "R.filesets", "sperrorest", "startR",
  "brms", "penaltyLearning"
)

revdep_check(bioc = TRUE, num_workers = num_workers)
revdep_add(packages = packages)
revdep_check(num_workers = availableCores())
revdep_report_summary(file = "revdep/README.md")
revdep_report_problems(file = "revdep/problems.md")
