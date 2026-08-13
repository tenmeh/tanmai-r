# Test whether two FENs describe the same position to play from

Compares the placement and the side to move, and ignores the move
clocks. Two FENs for the same board can differ in the halfmove counter
alone - one arrived at by playing moves, the other assembled from a
screenshot - and treating those as different positions would break every
comparison.

## Usage

``` r
same_position(a, b)
```

## Arguments

- a, b:

  FEN strings.

## Value

`TRUE` if both describe the same position and side to move.
