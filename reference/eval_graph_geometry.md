# Geometry for the evaluation graph

The arithmetic behind the graph, with no drawing: where each point sits
and what shapes join them. Rendering that into a picture is the caller's
job. They are split so this layer stays free of any UI toolkit - see the
note in `test-core-boundary.R`.

## Usage

``` r
eval_graph_geometry(cp, width = 420, height = 110)
```

## Arguments

- cp:

  Centipawn evaluations from White's point of view, one per position (so
  one more than the number of moves). `NA` where not yet measured.

- width, height:

  Pixel size of the graph.

## Value

A list with `n` points, `xs`/`ys` coordinates, `points` and `area` as
SVG coordinate strings, `mid` (the halfway line) and `hit_width` (the
width of one clickable band); or `NULL` if there is nothing to draw.

## Details

Evaluations are squashed with the same logistic the eval bar uses, so a
three-pawn edge and a nine-pawn one stay visibly different without the
graph being dominated by a single decisive moment.

Positions that have not been evaluated yet carry the last known value
forward rather than breaking the line, so the graph does not flicker
while the engine catches up with a fast game.
