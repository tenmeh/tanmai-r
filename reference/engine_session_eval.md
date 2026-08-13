# Evaluate one position on a persistent engine, waiting for the result

The counterpart to
[`engine_session_analyse()`](https://tenmeh.github.io/tanmai-r/reference/engine_session_analyse.md):
a bounded, blocking search for callers that need a number now rather
than a stream of improving ones. Scoring the moves of a live game needs
exactly that - one figure per position, cheap enough to run as the game
goes on.

## Usage

``` r
engine_session_eval(sess, fen, movetime_ms = 300L)
```

## Arguments

- sess:

  An engine session from
  [`engine_session_start()`](https://tenmeh.github.io/tanmai-r/reference/engine_session_start.md).

- fen:

  The position to evaluate.

- movetime_ms:

  Thinking time.

## Value

A list with `cp` (centipawns from the side to move's point of view, mate
scores folded onto the same scale), `best` (best move in UCI) and
`depth`, or `NULL` if no session or no result.

## Details

Give this its own session rather than sharing the board's. The board
runs `go infinite`, and interrupting it here would restart its search
and reset its depth on every move of the game.
