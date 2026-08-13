# Read engine output until a line starting with a given prefix appears

Read engine output until a line starting with a given prefix appears

## Usage

``` r
wait_for_line(p, target, timeout = 10)
```

## Arguments

- p:

  A running processx engine process.

- target:

  Line prefix to wait for (e.g. "uciok", "bestmove").

- timeout:

  Seconds to wait before erroring.

## Value

The first line that starts with `target`.
