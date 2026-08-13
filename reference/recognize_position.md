# Recognize a board screenshot end-to-end

Crops and splits the screenshot, auto-detects the piece set, reads the
symbols, and resolves orientation into a FEN.

## Usage

``` r
recognize_position(
  image,
  libs = load_all_template_libraries(),
  ctx,
  turn = "w",
  autocrop = TRUE,
  orientation = "auto"
)
```

## Arguments

- image:

  A magick image of the raw screenshot.

- libs:

  Named list of template libraries to auto-detect across (default: every
  locally available set, via
  [`load_all_template_libraries()`](https://tenmeh.github.io/tanmai-r/reference/load_all_template_libraries.md)).

- ctx:

  A chess.js V8 context from
  [`new_chess_context()`](https://tenmeh.github.io/tanmai-r/reference/new_chess_context.md).

- turn:

  Side to move, "w" or "b".

- autocrop:

  Whether to trim near-uniform margins before splitting.

- orientation:

  One of "auto", "white" (white on bottom) or "black".

## Value

A list describing the recognition: `board_img`, `symbols`,
`display_symbols` (white-bottom frame matching `fen`), `fen`,
`placement`, `flip`, `flip_detected`, `flip_source`, `valid`, `set`,
`set_scores`, `set_confident`, `set_margin` and `set_median_occ`.
