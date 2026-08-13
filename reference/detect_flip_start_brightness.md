# Detect orientation of a *starting position* from piece brightness

Compares the two back ranks at the top of the image against the two at
the bottom. Whichever end is brighter holds the white army.

## Usage

``` r
detect_flip_start_brightness(squares)
```

## Arguments

- squares:

  A list of 64 magick square images, row-major, top row first.

## Value

`TRUE` if black is on the bottom, `FALSE` if white is on the bottom, or
`NA` if the two ends can't be told apart.
