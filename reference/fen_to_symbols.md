# Expand a FEN placement field into 64 symbols

Expand a FEN placement field into 64 symbols

## Usage

``` r
fen_to_symbols(placement)
```

## Arguments

- placement:

  A FEN placement field (the part before the first space).

## Value

A character vector of 64 piece symbols, `"."` for an empty square, in
image order (top row first).

## Examples

``` r
fen_to_symbols("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR")[1:8]
#> [1] "r" "n" "b" "q" "k" "b" "n" "r"
```
