# Resolve the orientation of a calibration (starting-position) screenshot

Resolve the orientation of a calibration (starting-position) screenshot

## Usage

``` r
resolve_calibration_flip(squares, board_img, manual = "auto")
```

## Arguments

- squares:

  A list of 64 magick square images, row-major, top row first.

- board_img:

  The normalized board image, for the coordinate fallback.

- manual:

  One of "auto", "white" (white on bottom) or "black".

## Value

A list with `flip` (`TRUE` if black is on the bottom) and `source`,
naming the signal that decided it.
