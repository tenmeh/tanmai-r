# Drain pending engine output and fold it into the session state

Non-blocking: reads whatever is buffered and returns immediately, so it
is safe to call from a Shiny observer on a timer.

## Usage

``` r
engine_session_poll(sess)
```

## Arguments

- sess:

  An engine session from
  [`engine_session_start()`](https://tenmeh.github.io/tanmai-r/reference/engine_session_start.md).

## Value

A list with `depth`, `lines` (list of PV records ordered by multipv),
`fen` and `bestmove`, or `NULL` if there is no live session.
