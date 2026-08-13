# Convert a score to a 0-100 eval-bar percentage (White's share)

Convert a score to a 0-100 eval-bar percentage (White's share)

## Usage

``` r
eval_bar_pct(cp, mate, turn = "w")
```

## Arguments

- cp:

  Centipawn score (may be `NA`).

- mate:

  Moves-to-mate score (may be `NA`).

- turn:

  Side to move, "w" or "b".

## Value

A number in 0-100 giving White's share of the bar.
