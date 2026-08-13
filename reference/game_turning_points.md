# The moves where the game turned

The moves where the game turned

## Usage

``` r
game_turning_points(game, min_loss = 100, n = 5L)
```

## Arguments

- game:

  A game record with `cp` filled in.

- min_loss:

  Smallest centipawn loss worth reporting.

- n:

  How many to return.

## Value

A data frame of `ply`, `move_no`, `mover`, `san`, `loss` and `quality`,
worst first.
