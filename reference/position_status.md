# Whether a position is over, and how

A finished position has no evaluation an engine will report - Stockfish
returns no principal variation because there is no move to make - but it
does have a perfectly definite value. Asking chess.js is the only way to
tell a checkmate from a stalemate, and the difference is the whole game.

## Usage

``` r
position_status(fen)
```

## Arguments

- fen:

  A FEN string.

## Value

One of "checkmate", "stalemate", "draw" or "ongoing".

## Examples

``` r
position_status("rnb1kbnr/pppp1ppp/8/4p3/6Pq/5P2/PPPPP2P/RNBQKBNR w KQkq - 1 3")
#> [1] "checkmate"
position_status("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1")
#> [1] "ongoing"
```
