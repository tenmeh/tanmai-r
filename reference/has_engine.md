# Is a chess engine available?

Everything that reads a position works without one. Everything that
judges a position needs one.

## Usage

``` r
has_engine()
```

## Value

`TRUE` if a Stockfish binary can be found.

## Examples

``` r
has_engine()
#> [1] FALSE
```
