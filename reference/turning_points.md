# Where the game turned

The moves that cost the most, worst first. A game is usually decided by
two or three of them, and reading a whole evaluation graph to find them
is work a function can do.

## Usage

``` r
turning_points(game, min_loss = 100, n = 5L)
```

## Arguments

- game:

  A
  [tanmai_game](https://tenmeh.github.io/tanmai-r/reference/tanmai_game.md)
  that has been through
  [`evaluate()`](https://tenmeh.github.io/tanmai-r/reference/evaluate.md).

- min_loss:

  Ignore moves that cost less than this, in centipawns.

- n:

  How many to return.

## Value

The rows of `game` that cost the most, worst first.

## Examples

``` r
# \donttest{
if (has_engine()) {
  turning_points(evaluate(read_pgn("1. e4 e5 2. Nf3 Nc6 3. Bb5 a6")))
}
# }
```
