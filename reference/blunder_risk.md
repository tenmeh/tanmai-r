# Assess how likely a human is to go wrong in a position

Assess how likely a human is to go wrong in a position

## Usage

``` r
blunder_risk(
  fen,
  maia,
  min_prob = 0.01,
  movetime_ms = 1200L,
  engine_path = NULL,
  max_loss_cp = 1000
)
```

## Arguments

- fen:

  Position to assess.

- maia:

  A session from
  [`maia_session_start()`](https://tenmeh.github.io/tanmai-r/reference/maia_session_start.md).

- min_prob:

  Ignore moves a human is very unlikely to play; keeps the engine work
  proportional to what actually matters.

- movetime_ms:

  Engine time for the evaluation search.

- engine_path:

  Optional explicit engine path.

- max_loss_cp:

  Ceiling on how bad a single move is allowed to count as. Past roughly
  ten pawns a move is simply losing, and without a ceiling a forced mate
  (scored in the thousands) would swamp the average and make `risk`
  unreadable.

## Value

A list with `risk` (probability-weighted centipawn loss), `blunder_prob`
(chance of losing at least a pawn), `sharpness` (how much the plausible
moves disagree in value), `best` (the engine's move) and `moves`, a data
frame of candidates with `prob`, `cp`, `loss` and `contribution`.
