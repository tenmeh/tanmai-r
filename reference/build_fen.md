# Build a full FEN string from recognized symbols

Build a full FEN string from recognized symbols

## Usage

``` r
build_fen(symbols, turn = "w", flip = FALSE)
```

## Arguments

- symbols:

  Character vector of 64 symbols, row-major, top row first.

- turn:

  Side to move, "w" or "b".

- flip:

  `TRUE` if the screenshot had black on the bottom (the symbols are
  reversed to the standard white-bottom frame before assembly).

## Value

A list with `fen` (full FEN string) and `placement` (the placement field
only).
