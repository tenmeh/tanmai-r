# Split a normalized board into 64 square images

Split a normalized board into 64 square images

## Usage

``` r
split_board(board)
```

## Arguments

- board:

  A magick image sized `BOARD_PX` by `BOARD_PX`.

## Value

A list of 64 magick images, row-major, top-left square first.
