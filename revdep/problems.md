# fiery

Version: 0.2.3

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      6: private$run_blocking_server(showcase = showcase)
      7: startServer(self$host, self$port, list(call = private$request_logic, onHeaders = private$header_logic, 
             onWSOpen = private$websocket_logic))
      8: stop("Failed to create server")
      
      testthat results ================================================================
      OK: 167 SKIPPED: 0 FAILED: 5
      1. Error: lifecycle events get fired (@test-Fire.R#125) 
      2. Error: futures can be added and called (@test-Fire.R#223) 
      3. Error: ignite is blocked during run (@test-Fire.R#317) 
      4. Error: external triggers are fired (@test-Fire.R#334) 
      5. Error: showcase opens a browser (@test-Fire.R#353) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking top-level files ... WARNING
    ```
    Conversion of ‘README.md’ failed:
    pandoc: Could not fetch https://img.shields.io/codecov/c/github/thomasp85/fiery/master.svg
    TlsExceptionHostPort (HandshakeFailed Error_EOF) "img.shields.io" 443
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Thomas Lin Pedersen <thomasp85@gmail.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

