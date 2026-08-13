# Classify all 64 squares against a single template library

Classify all 64 squares against a single template library

## Usage

``` r
recognize_symbols(squares, lib)
```

## Arguments

- squares:

  A list of 64 magick square images, row-major, top row first.

- lib:

  A template library from
  [`load_template_library()`](https://tenmeh.github.io/tanmai-r/reference/load_template_library.md).

## Value

A character vector of 64 piece symbols ("." for empty).
