# Read a game from PGN

Returns one row per ply - the shape everything else in the package
reads. Comments, annotation glyphs and variations are tolerated, and a
`[FEN]` header is honoured, so a study or an endgame is not silently
replayed from the standard opening position.

## Usage

``` r
read_pgn(x)
```

## Arguments

- x:

  PGN text, or a path to a `.pgn` file.

## Value

A
[tanmai_game](https://tenmeh.github.io/tanmai-r/reference/tanmai_game.md)
data frame, one row per ply, with the PGN's header tags attached as a
`headers` attribute.

## Details

The evaluation columns (`cp`, `cp_loss`, `best_uci`, `best_san`,
`class`) come back as `NA`. Filling them needs an engine and is
[`evaluate()`](https://tenmeh.github.io/tanmai-r/reference/evaluate.md)'s
job.

## Examples

``` r
game <- read_pgn("1. e4 e5 2. Nf3 Nc6 3. Bb5 a6")
game[, c("ply", "side", "san", "uci")]
#> <tanmai game>  6 plies
#>   evaluated  0/6  (call evaluate() to fill these in)
#> 
#>   ply side san  uci
#> 1   1    w  e4 e2e4
#> 2   2    b  e5 e7e5
#> 3   3    w Nf3 g1f3
#> 4   4    b Nc6 b8c6
#> 5   5    w Bb5 f1b5
#> 6   6    b  a6 a7a6
```
