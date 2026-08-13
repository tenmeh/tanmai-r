# How accurately each player played

Returns one row per side: how many moves they made, their average
centipawn loss, how many inaccuracies, mistakes and blunders, and an
accuracy percentage.

## Usage

``` r
accuracy(game)
```

## Arguments

- game:

  A
  [tanmai_game](https://tenmeh.github.io/tanmai-r/reference/tanmai_game.md)
  that has been through
  [`evaluate()`](https://tenmeh.github.io/tanmai-r/reference/evaluate.md).

## Value

A data frame with one row per side.

## Details

The accuracy figure uses Lichess's published formula, so it is
comparable with the number they show rather than being a private
invention. It works by converting each evaluation to an expected win
percentage first - which is the point, because losing half a pawn
matters enormously in a level position and not at all when you are
already winning by a rook.

## Examples

``` r
# \donttest{
if (has_engine()) {
  accuracy(evaluate(read_pgn("1. e4 e5 2. Nf3 Nc6 3. Bb5 a6")))
}
# }
```
