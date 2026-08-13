# Fold an accepted observation into the game

Fold an accepted observation into the game

## Usage

``` r
game_accept(ctx, game, result)
```

## Arguments

- ctx:

  A chess.js V8 context from
  [`new_chess_context()`](https://tenmeh.github.io/tanmai-r/reference/new_chess_context.md).

- game:

  A game record from
  [`game_new()`](https://tenmeh.github.io/tanmai-r/reference/game_new.md).

- result:

  A `move` result from
  [`track_observation()`](https://tenmeh.github.io/tanmai-r/reference/track_observation.md).

## Value

The updated game record.
