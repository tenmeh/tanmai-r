# What each move cost the player who made it

Evaluations are stored from White's point of view so the graph has a
fixed meaning; a loss is measured from the mover's, which is the only
reading under which "you lost 3 pawns" makes sense for both colours.

## Usage

``` r
game_move_losses(game)
```

## Arguments

- game:

  A game record with `cp` filled in.

## Value

A numeric vector, one entry per move, of centipawns lost. `NA` where
either surrounding position is not yet evaluated.
