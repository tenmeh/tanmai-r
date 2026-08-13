# Evaluate a position or a game with a chess engine

For a game this fills in the columns
[`read_pgn()`](https://tenmeh.github.io/tanmai-r/reference/read_pgn.md)
leaves empty: `cp`, `cp_loss`, `best_uci`, `best_san` and `class`. For a
position it returns the evaluation and the best move.

## Usage

``` r
evaluate(x, ...)

# S3 method for class 'tanmai_game'
evaluate(x, movetime = 300L, engine_path = NULL, verbose = FALSE, ...)

# S3 method for class 'tanmai_position'
evaluate(x, movetime = 1000L, engine_path = NULL, ...)
```

## Arguments

- x:

  A
  [tanmai_game](https://tenmeh.github.io/tanmai-r/reference/tanmai_game.md)
  or
  [tanmai_position](https://tenmeh.github.io/tanmai-r/reference/tanmai_position.md).

- ...:

  Unused.

- movetime:

  Milliseconds of thinking time per position. The default is
  deliberately small: a game is many positions, and doubling this
  doubles the wait.

- engine_path:

  Path to a Stockfish binary. Found automatically if `NULL`.

- verbose:

  Report progress while working through a long game.

## Value

`x` with the engine columns filled in.

## Details

`cp` is always from **White's** point of view, so the sign means the
same thing down the whole column and the evaluation graph does not flip
every ply. `cp_loss` is from the **mover's**, because "you lost 3 pawns"
is only meaningful that way for both colours.

## Examples

``` r
# \donttest{
if (has_engine()) {
  game <- evaluate(read_pgn("1. e4 e5 2. Nf3 Nc6 3. Bb5 a6"))
  game[, c("san", "cp", "cp_loss", "class")]
}
# }
```
