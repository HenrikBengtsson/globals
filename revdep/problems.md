# future

<details>

* Version: 1.18.0
* Source code: https://github.com/cran/future
* URL: https://github.com/HenrikBengtsson/future
* BugReports: https://github.com/HenrikBengtsson/future/issues
* Date/Publication: 2020-07-09 05:40:03 UTC
* Number of recursive dependencies: 13

Run `revdep_details(, "future")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      [17:36:39.987]     ...future.result
      [17:36:39.987] }
      [17:36:39.994] requestCore(): workers = 2
      [17:36:39.997] MulticoreFuture started
      [17:36:40.009] plan(): Setting new future strategy stack:
      [17:36:40.010] List of future strategies:
      [17:36:40.010] 1. sequential:
      [17:36:40.010]    - args: function (expr, envir = parent.frame(), substitute = TRUE, lazy = FALSE, seed = NULL, globals = TRUE, local = TRUE, earlySignal = FALSE, label = NULL, ...)
      [17:36:40.010]    - tweaked: FALSE
      [17:36:40.010]    - call: NULL
      [17:36:40.014] plan(): nbrOfWorkers() = 1
      [17:36:40.019] plan(): Setting new future strategy stack:
      [17:36:40.020] List of future strategies:
      [17:36:40.020] 1. multicore:
      [17:36:40.020]    - args: function (expr, envir = parent.frame(), substitute = TRUE, lazy = FALSE, seed = NULL, globals = TRUE, workers = availableCores(constraints = "multicore"), earlySignal = FALSE, label = NULL, ...)
      [17:36:40.020]    - tweaked: FALSE
      [17:36:40.020]    - call: plan(multicore)
      [17:36:40.024] plan(): nbrOfWorkers() = 2
      Number of OpenMP threads in 'MulticoreFuture' future: 1
      Error: enable && nthreads > 1L is not TRUE
      Execution halted
    ```

