# Draw a position or a game

[`plot()`](https://rdrr.io/r/graphics/plot.default.html) on a position
draws the board.
[`plot()`](https://rdrr.io/r/graphics/plot.default.html) on a game draws
the evaluation across the game, which needs
[`evaluate()`](https://tenmeh.github.io/tanmai-r/reference/evaluate.md)
to have been run first.

## Usage

``` r
# S3 method for class 'tanmai_position'
plot(x, size = 512L, set_dir = NULL, ...)

# S3 method for class 'tanmai_game'
plot(x, ...)
```

## Arguments

- x:

  A
  [tanmai_position](https://tenmeh.github.io/tanmai-r/reference/tanmai_position.md)
  or
  [tanmai_game](https://tenmeh.github.io/tanmai-r/reference/tanmai_game.md).

- size:

  Board size in pixels.

- set_dir:

  Directory of piece art to draw with. Defaults to the bundled set.

- ...:

  Unused.

## Value

Invisibly, `x`.

## Examples

``` r
plot(read_fen("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1"))
```
