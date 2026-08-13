# Rank your moves by how likely they are to induce an opponent error

Choose which human moves to draw on the board

## Usage

``` r
radar_arrow_moves(moves, n = 3L)
```

## Arguments

- moves:

  The `moves` data frame from
  [`blunder_risk()`](https://tenmeh.github.io/tanmai-r/reference/blunder_risk.md).

- n:

  How many risk-ranked moves to take before adding the likeliest.

## Value

The selected rows, most dangerous first, with no duplicates.

## Details

Selection is by risk contribution rather than raw probability. In a trap
the dangerous move is by construction not the most likely one - it is
merely plausible - so picking the most probable moves would leave the
single move worth warning about undrawn, which defeats the purpose of
the overlay. The likeliest move is appended for context.
