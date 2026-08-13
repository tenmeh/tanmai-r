# Classify one square against a single template library

Classify one square against a single template library

## Usage

``` r
classify_square(square_img, lib)
```

## Arguments

- square_img:

  A magick image of one square.

- lib:

  A template library from
  [`load_template_library()`](https://tenmeh.github.io/tanmai-r/reference/load_template_library.md).

## Value

A FEN piece symbol, or "." for an empty square.
