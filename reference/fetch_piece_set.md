# Download one piece set's 12 SVGs into the cache

Validates that every SVG actually renders under magick before declaring
the set usable, and removes a partial download on failure.

## Usage

``` r
fetch_piece_set(name, quiet = TRUE)
```

## Arguments

- name:

  A piece-set name from
  [`piece_set_manifest()`](https://tenmeh.github.io/tanmai-r/reference/piece_set_manifest.md).

- quiet:

  Whether to suppress download progress messages.

## Value

`TRUE` on success, `FALSE` otherwise.
