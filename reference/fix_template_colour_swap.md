# Assert (and if necessary repair) the white/black brightness invariant

A template library learned from a board whose orientation was misjudged
has every white template built from a black piece and vice versa. That
is catastrophic and silent, so check it explicitly: across the six piece
kinds, the white templates must be brighter than the black ones.

## Usage

``` r
fix_template_colour_swap(lib)
```

## Arguments

- lib:

  A template library from
  [`build_from_start_position()`](https://tenmeh.github.io/tanmai-r/reference/build_from_start_position.md).

## Value

A list with the (possibly colour-corrected) `lib` and `swapped`,
indicating whether the colours had to be exchanged.
