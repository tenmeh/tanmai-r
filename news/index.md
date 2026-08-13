# Changelog

## tanmai 0.1.2

Groundwork for a CRAN submission. Nothing about the public API changes.

- Reading a position no longer creates anything on disk.
  [`stockfish_bin_dir()`](https://tenmeh.github.io/tanmai-r/reference/stockfish_bin_dir.md),
  [`piece_sets_dir()`](https://tenmeh.github.io/tanmai-r/reference/piece_sets_dir.md)
  and
  [`maia_dir()`](https://tenmeh.github.io/tanmai-r/reference/maia_dir.md)
  each created their directory just to answer *where would it be?*, and
  all three are called on ordinary read paths - looking for an installed
  piece set, looking for a cached engine. So
  [`has_engine()`](https://tenmeh.github.io/tanmai-r/reference/has_engine.md)
  and
  [`read_board()`](https://tenmeh.github.io/tanmai-r/reference/read_board.md)
  both wrote into the user’s cache, which CRAN forbids. The path helpers
  are now side-effect-free, matching
  [`custom_templates_path()`](https://tenmeh.github.io/tanmai-r/reference/custom_templates_path.md),
  which had already been fixed for this reason; the directory is created
  by whatever actually writes.

- A test holds that line: it points `R_user_dir()` at an empty sandbox,
  runs the read paths and the documented examples, and asserts nothing
  was created.

- Added `cran-comments.md`, and kept the `.claude` working directory out
  of the built tarball.

- A pkgdown site at <https://tenmeh.github.io/tanmai-r/>, built and
  deployed by

  101. The reference index leads with the four ways in and the two
       shapes they produce; the ninety-odd internal helpers are
       documented but kept below that, so the page opens on the public
       API rather than on the pipeline.

## tanmai 0.1.1

Catches the package up with fixes made in the app after the extraction.
The two had already drifted by about a hundred lines in under a week,
which is the argument for the app depending on this package rather than
carrying its own copy of the same code.

- Every Maia network CSSLab published is now available, 1100 to 1900 in
  hundreds, rather than three. The range cannot be widened - `maia-1000`
  and `maia-2000` do not exist - only subdivided.

- [`nearest_installed_rating()`](https://tenmeh.github.io/tanmai-r/reference/nearest_installed_rating.md)
  picks the closest network actually on disk, so a rating with no
  downloaded weights degrades to the nearest one rather than refusing to
  model a human at all.
  [`human_model_available()`](https://tenmeh.github.io/tanmai-r/reference/human_model_available.md)
  follows the same rule.

- The rating estimator keeps its three-network grid under its own
  constant. Its accuracy figures were measured over those three, and its
  confidence rule wants most of the posterior on a single network - a
  nine-way grid spreads that mass across neighbours and would silence
  it.

- [`fen_complete()`](https://tenmeh.github.io/tanmai-r/reference/fen_complete.md)
  gained a direct regression test, alongside the coverage it already had
  through
  [`read_fen()`](https://tenmeh.github.io/tanmai-r/reference/read_fen.md).

## tanmai 0.1.0

First release as a standalone package, extracted from the Shiny app at
[tenmeh/tanmai](https://github.com/tenmeh/tanmai), where all of this
code was originally written and where the app continues to live.

### Getting a position in

- [`read_fen()`](https://tenmeh.github.io/tanmai-r/reference/read_fen.md),
  [`read_board()`](https://tenmeh.github.io/tanmai-r/reference/read_board.md),
  [`read_pgn()`](https://tenmeh.github.io/tanmai-r/reference/read_pgn.md)
  and
  [`read_video()`](https://tenmeh.github.io/tanmai-r/reference/read_video.md) -
  four ways in, producing two data frames: a one-row position, or a game
  with one row per ply. Nothing downstream asks which adapter produced
  them, which is what makes a new input cheap to add and lets every
  analysis be written once.

- [`read_board()`](https://tenmeh.github.io/tanmai-r/reference/read_board.md)
  reports how confident it is rather than silently guessing. It is the
  only input that can be wrong, so it is the only one that says so.

- [`read_video()`](https://tenmeh.github.io/tanmai-r/reference/read_video.md)
  reads a whole game out of a screen recording, an animated GIF, or a
  folder of screenshots. A frame joins the game only when exactly one
  legal sequence of moves explains it, so frames caught mid-animation or
  mid-redraw are discarded instead of becoming invented moves. What
  happened to every frame comes back as a `ledger` attribute.

- [`read_fen()`](https://tenmeh.github.io/tanmai-r/reference/read_fen.md)
  accepts the shortened FENs chess sites put on the clipboard. Castling
  is deliberately not invented when the field is absent - such a FEN is
  not claiming those rights - though it *is* inferred from a picture,
  which has no field to omit.

### Making sense of it

- [`evaluate()`](https://tenmeh.github.io/tanmai-r/reference/evaluate.md),
  [`accuracy()`](https://tenmeh.github.io/tanmai-r/reference/accuracy.md),
  [`turning_points()`](https://tenmeh.github.io/tanmai-r/reference/turning_points.md)
  and [`plot()`](https://rdrr.io/r/graphics/plot.default.html), all
  needing a Stockfish engine, and all optional: everything that reads a
  position works without one.

- [`evaluate()`](https://tenmeh.github.io/tanmai-r/reference/evaluate.md)
  costs one engine search per position rather than two per move, because
  the engine reports its evaluation and its preferred move together and
  the position after move *i* is the position before move *i+1*.

- [`accuracy()`](https://tenmeh.github.io/tanmai-r/reference/accuracy.md)
  uses Lichess’s published formula, so the number is comparable with the
  one players already see elsewhere.

### Notes

- Licensed GPL-3. The bundled cburnett artwork is GPL-3 and is not
  incidental - it is the default template set and what the test suite
  renders against.

- `R CMD check --as-cran` passes with no errors, warnings or notes, on a
  machine with no chess engine installed.
