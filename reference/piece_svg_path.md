# Resolve the image file path for a piece symbol within a set

Most sets ship SVG, but a few use webp or png, so the extension is
resolved from what the set directory actually contains.

## Usage

``` r
piece_svg_path(symbol, set_dir = system.file("svg", package = "tanmai"))
```

## Arguments

- symbol:

  A FEN piece letter (uppercase = white, lowercase = black).

- set_dir:

  Directory holding the 12 piece images (defaults to bundled cburnett).

## Value

The file path of the matching image (e.g. `wN.svg` for "N").
