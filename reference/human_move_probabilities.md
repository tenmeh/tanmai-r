# Probability a modelled human plays each legal move

Probability a modelled human plays each legal move

## Usage

``` r
human_move_probabilities(sess, fen)
```

## Arguments

- sess:

  A session from
  [`maia_session_start()`](https://tenmeh.github.io/tanmai-r/reference/maia_session_start.md).

- fen:

  Position to evaluate.

## Value

A data frame of `move` and `prob`, ordered by decreasing probability;
zero rows if the query fails.
