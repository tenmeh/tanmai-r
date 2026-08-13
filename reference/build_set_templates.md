# Build and cache a set's template library

Renders the standard starting position with the set's own SVGs and
calibrates on it - the exact pipeline used at recognition time.

## Usage

``` r
build_set_templates(name, force = FALSE)
```

## Arguments

- name:

  A locally-available piece-set name.

- force:

  Rebuild even if a cached library already exists.

## Value

`TRUE` on success, `FALSE` if the set is unavailable or incomplete.
