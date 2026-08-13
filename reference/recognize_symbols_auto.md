# Recognize 64 squares against all available sets at once

Scores every square against every template of every installed set in a
single matrix multiply, then picks the best-matching set and reports
confidence signals (see the inline comments for how they are
calibrated).

## Usage

``` r
recognize_symbols_auto(squares, libs = load_all_template_libraries())
```

## Arguments

- squares:

  A list of 64 magick square images, row-major, top row first.

- libs:

  Named list of template libraries to score against (default: every
  locally available set).

## Value

A list with `symbols` (from the winning set), `set`, `scores` (per-set
mean similarity), `margin` (winner minus runner-up), `median_occ`
(typical occupied-square match) and `confident` (whether both gates
pass).
