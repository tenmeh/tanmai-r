# Evaluate a specific set of moves in one search

Uses UCI `searchmoves` so the engine scores exactly the moves asked for.
This matters: the moves a human is likely to blunder into are by
definition ones the engine ranks poorly, so they would fall outside an
ordinary MultiPV list.

## Usage

``` r
evaluate_moves(fen, moves, movetime_ms = 1200L, engine_path = NULL)
```

## Arguments

- fen:

  Position to search from.

- moves:

  UCI moves to evaluate.

- movetime_ms:

  Thinking time for the whole search.

- engine_path:

  Optional explicit engine path.

## Value

A data frame of `move` and `cp` (side-to-move's point of view).
