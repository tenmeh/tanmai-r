# Convert a UCI move to SAN for a position

Convert a UCI move to SAN for a position

## Usage

``` r
fen_move_to_san(ctx, fen, uci_move)
```

## Arguments

- ctx:

  A chess.js V8 context from
  [`new_chess_context()`](https://tenmeh.github.io/tanmai-r/reference/new_chess_context.md).

- fen:

  A FEN string of the position before the move.

- uci_move:

  A UCI move string (e.g. "e2e4", "e7e8q").

## Value

The move in SAN (e.g. "e4", "e8=Q"), or `NULL` if illegal.
