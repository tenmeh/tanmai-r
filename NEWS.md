# tanmai 0.1.1

Catches the package up with fixes made in the app after the extraction. The
two had already drifted by about a hundred lines in under a week, which is the
argument for the app depending on this package rather than carrying its own
copy of the same code.

* Every Maia network CSSLab published is now available, 1100 to 1900 in
  hundreds, rather than three. The range cannot be widened - `maia-1000` and
  `maia-2000` do not exist - only subdivided.

* `nearest_installed_rating()` picks the closest network actually on disk, so a
  rating with no downloaded weights degrades to the nearest one rather than
  refusing to model a human at all. `human_model_available()` follows the same
  rule.

* The rating estimator keeps its three-network grid under its own constant.
  Its accuracy figures were measured over those three, and its confidence rule
  wants most of the posterior on a single network - a nine-way grid spreads
  that mass across neighbours and would silence it.

* `fen_complete()` gained a direct regression test, alongside the coverage it
  already had through `read_fen()`.

# tanmai 0.1.0

First release as a standalone package, extracted from the Shiny app at
[tenmeh/tanmai](https://github.com/tenmeh/tanmai), where all of this code was
originally written and where the app continues to live.

## Getting a position in

* `read_fen()`, `read_board()`, `read_pgn()` and `read_video()` - four ways in,
  producing two data frames: a one-row position, or a game with one row per
  ply. Nothing downstream asks which adapter produced them, which is what makes
  a new input cheap to add and lets every analysis be written once.

* `read_board()` reports how confident it is rather than silently guessing.
  It is the only input that can be wrong, so it is the only one that says so.

* `read_video()` reads a whole game out of a screen recording, an animated GIF,
  or a folder of screenshots. A frame joins the game only when exactly one
  legal sequence of moves explains it, so frames caught mid-animation or
  mid-redraw are discarded instead of becoming invented moves. What happened to
  every frame comes back as a `ledger` attribute.

* `read_fen()` accepts the shortened FENs chess sites put on the clipboard.
  Castling is deliberately not invented when the field is absent - such a FEN
  is not claiming those rights - though it *is* inferred from a picture, which
  has no field to omit.

## Making sense of it

* `evaluate()`, `accuracy()`, `turning_points()` and `plot()`, all needing a
  Stockfish engine, and all optional: everything that reads a position works
  without one.

* `evaluate()` costs one engine search per position rather than two per move,
  because the engine reports its evaluation and its preferred move together and
  the position after move *i* is the position before move *i+1*.

* `accuracy()` uses Lichess's published formula, so the number is comparable
  with the one players already see elsewhere.

## Notes

* Licensed GPL-3. The bundled cburnett artwork is GPL-3 and is not incidental -
  it is the default template set and what the test suite renders against.

* `R CMD check --as-cran` passes with no errors, warnings or notes, on a
  machine with no chess engine installed.
