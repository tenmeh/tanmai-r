# Parse lc0's verbose move statistics into per-move probabilities

Parse lc0's verbose move statistics into per-move probabilities

## Usage

``` r
parse_policy_lines(lines)
```

## Arguments

- lines:

  Output lines from a completed `go nodes 1` search.

## Value

A data frame of `move` (UCI) and `prob`, ordered by decreasing
probability.
