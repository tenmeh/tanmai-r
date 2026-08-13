# Point a persistent engine at a position and start an infinite search

Any in-flight search is stopped first and its leftover output drained,
so stale `info` lines can't be mistaken for results for the new
position.

## Usage

``` r
engine_session_analyse(sess, fen)
```

## Arguments

- sess:

  An engine session from
  [`engine_session_start()`](https://tenmeh.github.io/tanmai-r/reference/engine_session_start.md).

- fen:

  The FEN to analyse.

## Value

Invisibly `TRUE` when the search was (re)started.
