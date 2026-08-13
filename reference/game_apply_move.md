# Play a move onto a tracked game

Play a move onto a tracked game

## Usage

``` r
game_apply_move(ctx, game, uci)
```

## Arguments

- ctx:

  A chess.js V8 context from
  [`new_chess_context()`](https://tenmeh.github.io/tanmai-r/reference/new_chess_context.md).

- game:

  A game record from
  [`game_new()`](https://tenmeh.github.io/tanmai-r/reference/game_new.md).

- uci:

  The move to play.

## Value

The updated game record, or the original unchanged if the move was
illegal.
