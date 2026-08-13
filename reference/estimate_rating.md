# Estimate an opponent's rating from the moves they played

Scores every move the given side played under each Maia network and
returns the posterior over ratings.

## Usage

``` r
estimate_rating(pool, fens, ucis, side = NULL)
```

## Arguments

- pool:

  A pool from
  [`maia_pool_start()`](https://tenmeh.github.io/tanmai-r/reference/maia_pool_start.md).

- fens:

  Positions before each move, as recorded by the game tracker.

- ucis:

  Moves played, aligned with `fens`.

- side:

  Which side to model, "w" or "b"; `NULL` scores every move.

## Value

A list with `posterior` (named, sums to 1), `rating` (the MAP estimate),
`n_moves` scored, `evidence` in nats, and `loglik` per rating.

## Details

`evidence` is the part worth reading before the estimate. It is the
summed spread of per-move log-probabilities across networks, in nats:
how much the observed moves actually distinguished one network from
another. A game of forced recaptures and obvious developing moves can
run twenty plies and carry almost none, because every network would have
played the same thing. Move count alone does not tell you that.
