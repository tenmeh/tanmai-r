# Parse one UCI info line into a principal-variation record

Parse one UCI info line into a principal-variation record

## Usage

``` r
parse_info_line(line)
```

## Arguments

- line:

  A UCI "info ..." line.

## Value

A list with `multipv`, `depth`, `cp`, `mate`, `pv` (UCI moves) and
`first` (first move of the PV), or `NULL` if the line has no PV.
