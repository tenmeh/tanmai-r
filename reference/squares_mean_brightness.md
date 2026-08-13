# Mean background-subtracted brightness of the pieces in a set of squares

White pieces are light-filled and black pieces dark-filled, so once the
square background is removed a white piece leaves a much higher (less
negative) mean residual than the same black piece. This holds across
piece sets because it is a property of the pieces, not of the artwork
style.

## Usage

``` r
squares_mean_brightness(squares, idx)
```

## Arguments

- squares:

  A list of 64 magick square images, row-major, top row first.

- idx:

  1-based indices of the squares to measure.

## Value

The mean residual over occupied squares, or `NA_real_` if none are
occupied.
