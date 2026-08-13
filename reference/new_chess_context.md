# Create a chess.js V8 context

Create a chess.js V8 context

## Usage

``` r
new_chess_context()
```

## Value

A V8 context with `ChessCtor` and `validateFenJS` bound, ready for
[`validate_fen()`](https://tenmeh.github.io/tanmai-r/reference/validate_fen.md)
and
[`fen_move_to_san()`](https://tenmeh.github.io/tanmai-r/reference/fen_move_to_san.md).
