# Directory holding lc0 and the Maia weight files

Honours `TANMAI_MAIA_DIR`, which container images set to a fixed path.
The default resolves under the user cache, which depends on `HOME` -
fine for local development, but fragile in a container that may run as
an arbitrary uid whose home is not where the build put the weights.

## Usage

``` r
maia_dir()
```

## Value

The directory path (which may not exist yet).

## Details

Deliberately does not create the directory.
[`find_lc0()`](https://tenmeh.github.io/tanmai-r/reference/find_lc0.md)
calls this merely to *look* for an installed binary, and creating a
directory in the user's cache space as a side effect of reading would be
wrong on any system and is forbidden on CRAN.
[`ensure_maia()`](https://tenmeh.github.io/tanmai-r/reference/ensure_maia.md)
creates it before downloading.
