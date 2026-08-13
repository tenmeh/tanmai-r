# Start one Maia session per rating

Estimating a rating means scoring the same move under every network, so
all of them have to be live at once. Three lc0 processes cost about 23
MB resident in total, which is affordable next to the app itself.

## Usage

``` r
maia_pool_start(ratings = MAIA_ESTIMATOR_RATINGS)
```

## Arguments

- ratings:

  Ratings to open sessions for.

## Value

A named list of sessions (names are the ratings), or `NULL` if any of
them could not be started - a partial pool would silently bias the
estimate towards whichever networks happened to load.
