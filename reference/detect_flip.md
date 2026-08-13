# Detect board orientation from rank labels along the left edge

Rank labels read 8..1 top-to-bottom for white's view and 1..8 for
black's; the digit 1 carries much less ink than 8, so comparing the top
and bottom label strips decides orientation.

## Usage

``` r
detect_flip(board_img)
```

## Arguments

- board_img:

  A magick image sized `BOARD_PX` by `BOARD_PX`.

## Value

`TRUE` if black is on the bottom, `FALSE` if white is on the bottom, or
`NA` if it cannot tell confidently (no coordinate labels visible).
