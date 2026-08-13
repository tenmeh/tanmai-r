# Stack several libraries' normalized templates into one matrix

Stack several libraries' normalized templates into one matrix

## Usage

``` r
template_matrix(libs)
```

## Arguments

- libs:

  A named list of template libraries.

## Value

A matrix whose rows are normalized templates, with a "meta" attribute (a
data frame mapping each row to its `set` and `symbol`).
