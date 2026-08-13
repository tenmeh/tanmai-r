# Snap a requested rating to the nearest available Maia network

Snap a requested rating to the nearest available Maia network

## Usage

``` r
match_maia_rating(rating)
```

## Arguments

- rating:

  A numeric rating.

## Value

The closest rating for which a Maia network exists - 1100 to 1900 in
hundreds; 1500 when `rating` is missing. Ties go to the lower network,
which only arises for exact multiples of fifty.
