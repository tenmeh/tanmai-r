# Directory where the downloaded Stockfish binary is cached

Deliberately does not create the directory.
[`find_local_engine()`](https://tenmeh.github.io/tanmai-r/reference/find_local_engine.md)
calls this merely to *look* in the cache, and creating a directory in
the user's cache space as a side effect of reading would be wrong on any
system and is forbidden on CRAN.
[`ensure_stockfish()`](https://tenmeh.github.io/tanmai-r/reference/ensure_stockfish.md)
creates it before downloading.

## Usage

``` r
stockfish_bin_dir()
```

## Value

The cache directory path (which may not exist yet).
