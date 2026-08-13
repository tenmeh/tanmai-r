# Start a new tracked game

Start a new tracked game

## Usage

``` r
game_new(fen = CV_START_FEN, turn_pinned = FALSE)
```

## Arguments

- fen:

  The anchor position. Its side-to-move is a guess when it came from a
  screenshot (nothing on a board says whose turn it is), so it stays
  unpinned until a move confirms it.

- turn_pinned:

  `TRUE` if the side to move is already known to be right, e.g. because
  the game started from the initial position.

## Value

A game record: `fens` (n+1 positions), `ucis`/`sans` (n moves), `cp`
(n+1 evaluations in centipawns from White's point of view, `NA` until
measured) and `turn_pinned`.
