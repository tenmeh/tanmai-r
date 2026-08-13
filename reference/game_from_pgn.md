# Build a tracked game from PGN

Parsing PGN properly is a real job - disambiguated SAN, comments,
variations, numeric annotation glyphs, games that start from a set-up
position - and chess.js already does it. It is embedded here anyway, for
legality and SAN, so this hands the text to `loadPgn()` and then walks
the resulting history to record the position before every move.

## Usage

``` r
game_from_pgn(ctx, pgn)
```

## Arguments

- ctx:

  A chess.js V8 context from
  [`new_chess_context()`](https://tenmeh.github.io/tanmai-r/reference/new_chess_context.md).

- pgn:

  PGN text, with or without headers.

## Value

A list with `game` (a record as from
[`game_new()`](https://tenmeh.github.io/tanmai-r/reference/game_new.md)),
`headers` (named character, possibly empty) and `n_moves`; or a list
with `error` when the text could not be parsed.

## Details

The result is the same shape
[`game_new()`](https://tenmeh.github.io/tanmai-r/reference/game_new.md)
produces, which is the point: an imported game is indistinguishable from
one watched move by move, so the evaluation graph, the turning points,
the Blunder Radar review and the rating estimator all work on it with no
code of their own.

A `[FEN]` header is honoured, so a study or an endgame that does not
begin from the initial position imports correctly rather than being
silently replayed from the standard start.
