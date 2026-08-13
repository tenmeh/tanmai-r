# Detect orientation from where each army sits

Uses recognized symbols: the mean image row of the white pieces versus
the black pieces. Rows are numbered from the top, so the army with the
larger mean row is the one on the bottom.

## Usage

``` r
detect_flip_piece_mass(symbols)
```

## Arguments

- symbols:

  Character vector of 64 recognized symbols in image order.

## Value

`TRUE` if black is on the bottom, `FALSE` if white is on the bottom, or
`NA` when one side has no pieces or the two are too close to call.
