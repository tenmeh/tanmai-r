# Describe what a move cost, in words a player would use

Mate is scored in the thousands of centipawns so that it outranks any
amount of material, which makes "lost 100.3 pawns" the literal but
useless reading of walking into mate. Past the point where material
stops being the story, say what actually happened instead.

## Usage

``` r
format_loss(loss_cp)
```

## Arguments

- loss_cp:

  Centipawns lost, from
  [`game_move_losses()`](https://tenmeh.github.io/tanmai-r/reference/game_move_losses.md).

## Value

A short label such as "1.4 pawns" or "gets mated".
