# Stop a persistent engine session

Stop a persistent engine session

## Usage

``` r
engine_session_stop(sess)
```

## Arguments

- sess:

  An engine session from
  [`engine_session_start()`](https://tenmeh.github.io/tanmai-r/reference/engine_session_start.md).

## Value

Invisibly `NULL`; kills the process if it is still alive.
