# Read a position from a FEN string

The fast path: if you already have the position as text, recognition is
a step to skip rather than endure.

## Usage

``` r
read_fen(x)
```

## Arguments

- x:

  A FEN string.

## Value

A one-row
[tanmai_position](https://tenmeh.github.io/tanmai-r/reference/tanmai_position.md)
data frame.

## Details

Four-field FENs are accepted. That is not laxity - it is what chess
websites actually put on the clipboard, and chess.js fills in the
castling, en passant and clock fields itself.

## Examples

``` r
read_fen("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1")
#> <tanmai position>
#>   fen        rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1
#>   to move    white
```
