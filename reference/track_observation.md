# Decide what a freshly recognized position means for a tracked game

The whole point of the feature lives here. An observation is classified,
not trusted:

## Usage

``` r
track_observation(ctx, game, observed_fen, max_plies = 2L)
```

## Arguments

- ctx:

  A chess.js V8 context from
  [`new_chess_context()`](https://tenmeh.github.io/tanmai-r/reference/new_chess_context.md).

- game:

  A game record from
  [`game_new()`](https://tenmeh.github.io/tanmai-r/reference/game_new.md).

- observed_fen:

  The FEN just recognized; only its placement is used.

- max_plies:

  Longest move sequence that may be inferred at once.

## Value

A list with `status`, `moves` (UCI moves for status `move`),
`anchor_fen` (the position the moves are played from - the current one,
unless the turn had to be flipped), `turn_flipped` and a human-readable
`reason`.

## Details

- `invalid` - the recognizer produced nothing usable.

- `unchanged` - the same position we already hold; the common case, and
  not an error.

- `stale` - a position we were in earlier. A capture frame caught mid
  animation, or a re-render, shows the board as it was; treating that as
  a fresh event would rewind the game.

- `move` - exactly one legal sequence explains it. Accepted.

- `ambiguous` - several sequences explain it, so we cannot say which was
  played. Rare in practice but never guessed at.

- `unexplained` - no legal sequence reaches it. Almost always a misread
  square; occasionally a jump longer than `max_plies`. Rejected either
  way.

While the side to move is still unpinned (the anchor came from a
screenshot, which cannot show whose turn it is) the search is retried
from the same position with the turn flipped. A first move that only
makes sense for the other side is the evidence that settles it.
