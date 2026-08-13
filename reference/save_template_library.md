# Save a template library to an RDS file

Save a template library to an RDS file

## Usage

``` r
save_template_library(lib, path)
```

## Arguments

- lib:

  A template library (as built by
  [`build_from_start_position()`](https://tenmeh.github.io/tanmai-r/reference/build_from_start_position.md)).

- path:

  Destination path.

## Value

Invisibly, the result of
[`saveRDS()`](https://rdrr.io/r/base/readRDS.html).
