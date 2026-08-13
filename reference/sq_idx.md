# Map a 0-indexed board row/column to a 1-indexed symbol-vector position

Map a 0-indexed board row/column to a 1-indexed symbol-vector position

## Usage

``` r
sq_idx(row, col)
```

## Arguments

- row:

  0-indexed board row (0 = top rank shown).

- col:

  0-indexed board column (0 = leftmost file shown).

## Value

The 1-indexed position into a row-major 64-symbol vector.
