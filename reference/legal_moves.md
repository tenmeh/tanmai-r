# List every legal move in a position, in UCI

List every legal move in a position, in UCI

## Usage

``` r
legal_moves(ctx, fen)
```

## Arguments

- ctx:

  A chess.js V8 context from
  [`new_chess_context()`](https://tenmeh.github.io/tanmai-r/reference/new_chess_context.md).

- fen:

  A FEN string.

## Value

A character vector of UCI moves (empty if the position is over or
invalid).
