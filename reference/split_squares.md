# Prepare and split a screenshot into 64 square images in one step

Prepare and split a screenshot into 64 square images in one step

## Usage

``` r
split_squares(image, autocrop = TRUE)
```

## Arguments

- image:

  A magick image of a board screenshot.

- autocrop:

  Whether to trim near-uniform margins first.

## Value

A list of 64 magick images, row-major, top-left square first.
