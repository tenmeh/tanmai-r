# Cache directory for downloaded piece sets

Deliberately does not create the directory.
[`piece_set_path()`](https://tenmeh.github.io/tanmai-r/reference/piece_set_path.md)
calls this on every recognition to *look* for an installed set, and
creating a directory in the user's cache space as a side effect of
reading would be wrong on any system and is forbidden on CRAN.
[`fetch_piece_set()`](https://tenmeh.github.io/tanmai-r/reference/fetch_piece_set.md)
and
[`save_template_library()`](https://tenmeh.github.io/tanmai-r/reference/save_template_library.md)
create it when they actually write.

## Usage

``` r
piece_sets_dir()
```

## Value

The piece-sets cache directory path (which may not exist yet).
