# A chess game

A data frame with **one row per ply**, returned by
[`read_pgn()`](https://tenmeh.github.io/tanmai-r/reference/read_pgn.md)
and
[`read_video()`](https://tenmeh.github.io/tanmai-r/reference/read_video.md).
This is the shape the whole package is built around: every analysis
reads it and none of them ask which adapter produced it, which is why a
new way of getting a game in costs almost nothing.

## Details

It is an ordinary data frame, so accuracy by player is a `summarise()`,
the evaluation graph is a `ggplot()`, and the moves that decided the
game are a `slice_max()`.

## Columns

- ply:

  Half-move number, from 1.

- move_no:

  Full move number, as printed in a PGN.

- side:

  Who moved, `"w"` or `"b"`. Derived from the position, not assumed, so
  a game starting from a set-up position is right.

- san, uci:

  The move played, in both notations.

- fen_before, fen_after:

  The positions either side of the move. Each row's `fen_after` is the
  next row's `fen_before`.

- cp:

  Evaluation after the move, in centipawns, always from **White's**
  point of view so the sign means the same thing down the whole column.
  `NA` until
  [`evaluate()`](https://tenmeh.github.io/tanmai-r/reference/evaluate.md)
  is run.

- cp_loss:

  What the move cost, from the **mover's** point of view - the only
  reading under which "you lost three pawns" makes sense for both
  colours. Never negative.

- best_uci, best_san:

  What the engine would have played instead.

- class:

  A factor: best, good, inaccuracy, mistake or blunder.

- human_p:

  Probability a human of a given rating plays this move. Reserved; not
  yet filled in.

## Attributes

`headers` carries a PGN's header tags. `ledger` (from
[`read_video()`](https://tenmeh.github.io/tanmai-r/reference/read_video.md))
records what became of every frame that was looked at.

## See also

[tanmai_position](https://tenmeh.github.io/tanmai-r/reference/tanmai_position.md)
