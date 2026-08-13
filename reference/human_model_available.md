# Is a human model usable right now?

Asks whether the radar can say *something* about a player of this
strength, not whether that exact network is installed -
[`maia_session_start()`](https://tenmeh.github.io/tanmai-r/reference/maia_session_start.md)
falls back to the nearest one it has. Deliberately permissive, because
it gates a feature: refusing to model a 1300 because only 1100 and 1500
are downloaded would turn the radar off for a rating it can very nearly
answer.

## Usage

``` r
human_model_available(rating = 1500L)
```

## Arguments

- rating:

  Desired rating.

## Value

`TRUE` when lc0 and at least one Maia network are present.

## Details

Build-time checks that a specific set of weights really is present
should test the files directly rather than call this.
