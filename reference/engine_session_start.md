# Start a persistent Stockfish process

Start a persistent Stockfish process

## Usage

``` r
engine_session_start(multipv = 3L, engine_path = NULL)
```

## Arguments

- multipv:

  Number of principal variations to report.

- engine_path:

  Optional path to a Stockfish binary (defaults to the cached/downloaded
  one via
  [`ensure_stockfish()`](https://tenmeh.github.io/tanmai-r/reference/ensure_stockfish.md)).

## Value

An engine session list with the process handle and mutable state, or
`NULL` if no engine binary could be obtained.
