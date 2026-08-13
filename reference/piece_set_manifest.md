# Manifest of every Lichess piece set

Every Lichess piece set that can be recognized, so any Lichess theme
works without calibration. "mono", "letter" and "disguised" are
deliberately excluded: their pieces are monochrome outlines, bare
letters, or (by design) all identical, so they are ambiguous on purpose
and would only add confusable templates. License strings are from lila's
COPYING.md.

## Usage

``` r
piece_set_manifest()
```

## Value

A data frame with `name` and `license` columns.
