# Start a persistent Maia session

Loading the network costs a second or two, so the process is kept alive
and reused; each subsequent query is a single forward pass.

## Usage

``` r
maia_session_start(rating = 1500L)
```

## Arguments

- rating:

  Target rating; snapped to the nearest network that is actually
  installed.

## Value

A session list, or `NULL` if lc0 or the weights are missing.
