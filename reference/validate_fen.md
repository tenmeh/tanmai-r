# Validate a FEN via chess.js

Validate a FEN via chess.js

## Usage

``` r
validate_fen(ctx, fen)
```

## Arguments

- ctx:

  A chess.js V8 context from
  [`new_chess_context()`](https://tenmeh.github.io/tanmai-r/reference/new_chess_context.md).

- fen:

  A FEN string.

## Value

The parsed chess.js validation result (a list with `ok` and, on failure,
`error`).
