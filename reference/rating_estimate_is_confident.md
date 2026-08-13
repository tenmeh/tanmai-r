# Is a rating estimate strong enough to act on?

Raw accuracy of the MAP estimate is only around 72-75% across the three
networks - better than the 33% of guessing, but not something to state
as fact. It also barely improves with more moves, because the limit is
how similar Maia's networks are, not how much data there is. What does
work is declining to answer: requiring enough moves, enough
discriminating evidence and a concentrated posterior trades coverage for
precision.

## Usage

``` r
rating_estimate_is_confident(
  est,
  min_moves = 6,
  min_evidence = 6,
  min_posterior = 0.7
)
```

## Arguments

- est:

  An estimate from
  [`estimate_rating()`](https://tenmeh.github.io/tanmai-r/reference/estimate_rating.md).

- min_moves:

  Minimum opponent moves observed.

- min_evidence:

  Minimum discriminating evidence, in nats.

- min_posterior:

  Minimum posterior mass on the leading rating.

## Value

`TRUE` when the estimate is worth showing as an answer.

## Details

Calibrated on 103 estimates from games sampled from a known network (the
opposing side driven by a different one, so this is not a distribution
recognising itself):


      moves  evidence  posterior | fires  correct when it fires
          6         4       0.50 |   59
          6         6       0.70 |   35
          6         8       0.70 |   24

The defaults take the middle row: silent about two thirds of the time,
and right about 94% of the time it does speak. Percentages come from a
corpus of 103, so treat them as approximate.

The move minimum is not redundant with the evidence one. A single sharp
move can clear 2 nats on its own, which is how an earlier version of
this managed to declare a confident rating from one move of a game.
