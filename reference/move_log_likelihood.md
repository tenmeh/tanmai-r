# Log-probability of one played move under each rating's network

Log-probability of one played move under each rating's network

## Usage

``` r
move_log_likelihood(pool, fen, uci, floor_prob = MAIA_MIN_POLICY)
```

## Arguments

- pool:

  A pool from
  [`maia_pool_start()`](https://tenmeh.github.io/tanmai-r/reference/maia_pool_start.md).

- fen:

  The position the move was played from.

- uci:

  The move that was actually played.

- floor_prob:

  Lower bound applied before taking logs.

## Value

A named numeric vector of log-probabilities, one per rating.
