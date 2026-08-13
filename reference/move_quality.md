# Classify how bad a move was

Thresholds follow the convention players already know from Lichess and
Chess.com, so "blunder" here means what it means everywhere else.

## Usage

``` r
move_quality(loss_cp)
```

## Arguments

- loss_cp:

  Centipawns lost by the move.

## Value

One of "blunder", "mistake", "inaccuracy" or "ok".
