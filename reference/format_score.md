# Format an engine score for display

Format an engine score for display

## Usage

``` r
format_score(cp, mate, turn = "w")
```

## Arguments

- cp:

  Centipawn score (may be `NA`).

- mate:

  Moves-to-mate score (may be `NA`).

- turn:

  Side to move, "w" or "b"; scores are converted to White's point of
  view so the eval bar has a fixed meaning.

## Value

A short string such as "+1.24" or "M3", or "-" when unscored.
