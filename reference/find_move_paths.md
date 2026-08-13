# Every short legal path from one position to a target placement

Searches all legal move sequences up to `max_plies` long and returns
those that reach `target_placement`. Only the placement is compared,
because that is all a screenshot can show - side to move, castling
rights, en passant and the move clocks are not visible on a board and
are instead carried forward by playing the moves.

## Usage

``` r
find_move_paths(ctx, from_fen, target_placement, max_plies = 2L, cap = 4L)
```

## Arguments

- ctx:

  A chess.js V8 context from
  [`new_chess_context()`](https://tenmeh.github.io/tanmai-r/reference/new_chess_context.md).

- from_fen:

  The position we are confident about.

- target_placement:

  The placement field just observed.

- max_plies:

  Longest sequence to consider.

- cap:

  Stop once this many distinct paths are found; the caller only needs to
  distinguish none, one and more-than-one.

## Value

A list of character vectors of UCI moves, shortest first.

## Details

Cost grows steeply with depth: two plies is around 1200 positions
(~0.1s), three is around 40000 (~5s). Two is the useful setting - it
covers a capture frame arriving only after the reply - and the default
reflects that.
