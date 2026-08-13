# A chess position

A one-row data frame describing a single position, returned by
[`read_fen()`](https://tenmeh.github.io/tanmai-r/reference/read_fen.md)
and
[`read_board()`](https://tenmeh.github.io/tanmai-r/reference/read_board.md).
It is an ordinary data frame with an extra class, so `[`, dplyr and
ggplot2 work on it without knowing anything about chess.

## Columns

- fen:

  The position, as a complete six-field FEN.

- turn:

  Side to move, `"w"` or `"b"`.

- orientation:

  Which colour was at the bottom of the board it was read from.
  Meaningful for a screenshot; conventional otherwise.

- piece_set:

  The piece set matched, or `NA` when the position did not come from a
  picture.

- confident:

  Whether the piece set was recognised well enough to trust. `NA` for
  adapters that do not read art - only a picture can be misread.

- margin, median_occ:

  The two recognition signals behind `confident`: how far the winning
  piece set stood out from the runner-up, and how well it explained a
  typical occupied square.

- valid:

  Whether the position is structurally legal.

- orientation_source:

  Which signal decided the orientation.

- source:

  Which adapter produced the row: `"fen"` or `"screenshot"`.

[`evaluate()`](https://tenmeh.github.io/tanmai-r/reference/evaluate.md)
adds `cp`, `best_uci` and `best_san`.

## See also

[tanmai_game](https://tenmeh.github.io/tanmai-r/reference/tanmai_game.md)
