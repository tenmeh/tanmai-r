# The position that results from playing a move

The position that results from playing a move

## Usage

``` r
fen_after_move(ctx, fen, uci_move)
```

## Arguments

- ctx:

  A chess.js V8 context from
  [`new_chess_context()`](https://tenmeh.github.io/tanmai-r/reference/new_chess_context.md).

- fen:

  A FEN string of the position before the move.

- uci_move:

  A UCI move string.

## Value

The FEN after the move, or `NA_character_` if it is illegal.
