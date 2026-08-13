# Foreground ink in the rank-label strip of a left-edge square

Foreground ink in the rank-label strip of a left-edge square

## Usage

``` r
label_ink(mat, row)
```

## Arguments

- mat:

  A grayscale board matrix from
  [`to_gray_matrix()`](https://tenmeh.github.io/tanmai-r/reference/to_gray_matrix.md).

- row:

  The 0-indexed board row whose left-edge label strip to measure.

## Value

The fraction of strip pixels that differ strongly from the local
background (higher means more ink, i.e. a wider digit such as 8).
