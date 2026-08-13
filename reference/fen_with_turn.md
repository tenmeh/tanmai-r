# Rewrite a FEN's side to move

The en-passant square is cleared at the same time: it belongs to the
side that was about to move, and is meaningless once the other side is
on turn.

## Usage

``` r
fen_with_turn(fen, turn)
```

## Arguments

- fen:

  A FEN string.

- turn:

  "w" or "b".

## Value

The FEN with its turn field replaced.
