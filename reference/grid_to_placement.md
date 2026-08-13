# Convert a 64-symbol grid to a FEN piece-placement field

Convert a 64-symbol grid to a FEN piece-placement field

## Usage

``` r
grid_to_placement(symbols)
```

## Arguments

- symbols:

  Character vector of 64 entries, row-major, top row first, using FEN
  piece letters and "." for an empty square.

## Value

The FEN placement string (ranks separated by "/").
