# Nearest Maia network whose weights are actually on disk

[`match_maia_rating()`](https://tenmeh.github.io/tanmai-r/reference/match_maia_rating.md)
answers which networks *exist*; this answers which can be used right
now. The two differ on any machine that has not fetched the full set,
and the slider offers every rating regardless - so without this a stop
like 1300 would silently turn the Blunder Radar off rather than model
the nearest strength available.

## Usage

``` r
nearest_installed_rating(rating)
```

## Arguments

- rating:

  A numeric rating.

## Value

The closest installed rating, or `NA_integer_` if none are.
