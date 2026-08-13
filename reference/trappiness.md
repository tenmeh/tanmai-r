# Rate moves by how likely they are to induce an opponent mistake

For each candidate move, plays it and measures how badly a human
opponent is likely to go wrong in the resulting position. Moves are then
scored on practical value: what the move costs you objectively, set
against what it is likely to win you from the opponent's mistakes.

## Usage

``` r
trappiness(fen, maia, ctx, top_n = 5L, movetime_ms = 800L)
```

## Arguments

- fen:

  Position to move from.

- maia:

  A session from
  [`maia_session_start()`](https://tenmeh.github.io/tanmai-r/reference/maia_session_start.md)
  representing the opponent.

- ctx:

  A chess.js V8 context, used to apply moves.

- top_n:

  How many of your own candidate moves to examine.

- movetime_ms:

  Engine time per evaluation search.

## Value

A data frame of `move`, `cp` (its objective value to you), `cost`
(centipawns given up versus your best move), `trap` (the opponent's
expected loss afterwards) and `practical` (trap minus cost), ordered by
`practical`.
