# Find a Stockfish binary already present on this machine

Prefers one installed system-wide (which is how the container image and
most Linux setups provide it, e.g. `apt install stockfish`) before
looking in the download cache. This keeps deployments from fetching a
binary at runtime, which a read-only or ephemeral filesystem would not
survive.

## Usage

``` r
find_local_engine()
```

## Value

The path to the binary, or `NULL` if none is present.
