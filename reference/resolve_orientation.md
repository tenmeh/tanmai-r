# Resolve board orientation

Signals are consulted strongest-first (see fct_orientation.R): an
explicit user choice, then where the two armies sit, then coordinate
labels, with legality only breaking a remaining tie. A wrong 180-degree
flip scrambles the whole board, so the chosen orientation is also
reported back to the UI along with the signal that decided it.

## Usage

``` r
resolve_orientation(ctx, symbols, turn, flip_hint, manual = "auto")
```

## Arguments

- ctx:

  A chess.js V8 context from
  [`new_chess_context()`](https://tenmeh.github.io/tanmai-r/reference/new_chess_context.md).

- symbols:

  Character vector of 64 recognized symbols, image order.

- turn:

  Side to move, "w" or "b".

- flip_hint:

  Coordinate-label hint from
  [`detect_flip()`](https://tenmeh.github.io/tanmai-r/reference/detect_flip.md).

- manual:

  One of "auto", "white" (white on bottom) or "black".

## Value

A list with `fen`, `placement`, `flip`, `valid` and `source` (the name
of the deciding signal).
