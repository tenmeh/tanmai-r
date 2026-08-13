# tanmai: Read Chess Positions from Screenshots, FEN, PGN and Video

Four ways to get a chess position into R, all producing the same two
data frames: a one-row position, or a game with one row per ply. Nothing
downstream asks which one you used, which is why they cost so little to
add.

## Details

- [`read_board()`](https://tenmeh.github.io/tanmai-r/reference/read_board.md)
  reads a screenshot of a board, and reports how confident it is rather
  than silently guessing.

- [`read_fen()`](https://tenmeh.github.io/tanmai-r/reference/read_fen.md)
  takes the position as text, filling in the fields chess sites
  habitually trim off the end.

- [`read_pgn()`](https://tenmeh.github.io/tanmai-r/reference/read_pgn.md)
  reads a game you already have.

- [`read_video()`](https://tenmeh.github.io/tanmai-r/reference/read_video.md)
  reads a game out of a recording of it being played.

With a Stockfish engine installed,
[`evaluate()`](https://tenmeh.github.io/tanmai-r/reference/evaluate.md),
[`accuracy()`](https://tenmeh.github.io/tanmai-r/reference/accuracy.md)
and
[`turning_points()`](https://tenmeh.github.io/tanmai-r/reference/turning_points.md)
say what the game was worth. Without one, everything that reads a
position still works - the engine is optional at every level.

## See also

Useful links:

- <https://github.com/tenmeh/tanmai-r>

- Report bugs at <https://github.com/tenmeh/tanmai-r/issues>

## Author

**Maintainer**: Tanmay Chanda <81738153+tenmeh@users.noreply.github.com>

Authors:

- Tanmay Chanda <81738153+tenmeh@users.noreply.github.com>
