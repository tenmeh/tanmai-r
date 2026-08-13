# Download lc0 and the Maia weights if they are not already present

Intended for local development; deployed images bake these in.

## Usage

``` r
ensure_maia(ratings = MAIA_RATINGS)
```

## Arguments

- ratings:

  Ratings whose weights should be fetched.

## Value

`TRUE` if lc0 and at least one weights file are available.
