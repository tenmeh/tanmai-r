# Render an 8x8 board with pieces placed from a symbol grid

Render an 8x8 board with pieces placed from a symbol grid

## Usage

``` r
render_position(
  symbols,
  size = 512L,
  set_dir = system.file("svg", package = "tanmai")
)
```

## Arguments

- symbols:

  Character vector of 64 symbols, row-major, top row first, with "." for
  an empty square.

- size:

  Board side length in pixels.

- set_dir:

  Directory holding the 12 piece SVGs (defaults to bundled cburnett).

## Value

A magick image of the rendered board.

## Examples

``` r
board <- render_position(fen_to_symbols(
  "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR"
), size = 256)
```
