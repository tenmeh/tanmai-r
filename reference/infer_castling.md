# Infer castling rights from piece placement

Grants a castling right only when the king and the matching rook sit on
their home squares. `symbols` must already be in standard (white-bottom)
orientation.

## Usage

``` r
infer_castling(symbols)
```

## Arguments

- symbols:

  Character vector of 64 symbols, row-major, top row first.

## Value

A FEN castling field (e.g. "KQkq"), or "-" if no rights.
