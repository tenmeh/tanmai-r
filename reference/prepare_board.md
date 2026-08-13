# Normalize a screenshot to an exact board-sized RGB image

Normalize a screenshot to an exact board-sized RGB image

## Usage

``` r
prepare_board(image, autocrop = TRUE)
```

## Arguments

- image:

  A magick image of a board screenshot.

- autocrop:

  Whether to trim near-uniform margins first.

## Value

A magick image resized to `BOARD_PX` by `BOARD_PX`.
