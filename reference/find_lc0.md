# Locate the lc0 binary

Checks an explicit override, then PATH, then the usual install locations
and the download cache. There is no official Linux release of lc0, so
container images build it from source and put it on PATH.

## Usage

``` r
find_lc0()
```

## Value

Path to lc0, or `NULL` if it is not available.
