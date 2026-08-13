# Ask Stockfish for the best move in a position

Ask Stockfish for the best move in a position

## Usage

``` r
best_move_uci(fen, movetime_ms = 1000L, engine_path = NULL)
```

## Arguments

- fen:

  Full FEN string of the position.

- movetime_ms:

  Engine thinking time in milliseconds.

- engine_path:

  Optional path to a Stockfish binary (defaults to the cached/downloaded
  one via
  [`ensure_stockfish()`](https://tenmeh.github.io/tanmai-r/reference/ensure_stockfish.md)).

## Value

A list with `move` and `ponder` (UCI strings, e.g. "e2e4"), `score_cp`
(centipawns) and `score_mate` (moves to mate), from the side-to-move's
point of view.
