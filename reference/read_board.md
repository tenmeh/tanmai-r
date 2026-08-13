# Read a position from a screenshot of a board

Crops the board out of the screenshot, works out which piece set it is
drawn in, reads the 64 squares, and decides which way round the board
is.

## Usage

``` r
read_board(
  image,
  turn = c("w", "b"),
  orientation = c("auto", "white", "black"),
  autocrop = TRUE,
  piece_sets = NULL
)
```

## Arguments

- image:

  A screenshot: a file path, or a `magick-image`.

- turn:

  Side to move, `"w"` or `"b"`. A still image cannot show whose turn it
  is, so it has to be told.

- orientation:

  One of `"auto"`, `"white"` or `"black"`. `"auto"` decides from where
  the two armies sit, which is reliable for real positions.

- autocrop:

  Trim the surrounding page before splitting. Leave on unless the
  screenshot is already cropped tight to the board.

- piece_sets:

  Template libraries to match against. Defaults to every set installed
  locally.

## Value

A one-row
[tanmai_position](https://tenmeh.github.io/tanmai-r/reference/tanmai_position.md)
data frame.

## Details

Unlike every other way of getting a position, this one can be wrong, so
it reports how sure it is. `confident` is `FALSE` when the art does not
match any installed piece set well enough to trust - typically a
Chess.com or custom theme. The `fen` is still returned in that case,
because a best guess you can correct beats no answer at all, but it is
flagged rather than presented as fact.

## Examples

``` r
# Render a board and read it straight back.
board <- render_position(fen_to_symbols(
  "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR"
))
read_board(board)
#> <tanmai position>
#>   fen        rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1
#>   to move    white
#>   piece set  cburnett
#>   orientation white on the bottom (army positions)
#>   confidence  recognised (margin NA, typical square 0.99)
```
