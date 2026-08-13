# Test whether a FEN is legal

Test whether a FEN is legal

## Usage

``` r
is_valid_fen(ctx, fen)
```

## Arguments

- ctx:

  A chess.js V8 context from
  [`new_chess_context()`](https://tenmeh.github.io/tanmai-r/reference/new_chess_context.md).

- fen:

  A FEN string.

## Value

`TRUE` if the FEN is legal, `FALSE` otherwise.
