# Parse a UCI score from an engine info line

Parse a UCI score from an engine info line

## Usage

``` r
parse_uci_score(line, current)
```

## Arguments

- line:

  A UCI "info ..." line.

- current:

  The score list to fall back to when the line has no score.

## Value

A list with `cp` (centipawns) and `mate` (moves to mate), one of which
is `NA_integer_`.
