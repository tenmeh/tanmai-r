# Fill in the FEN fields people leave off

Chess sites copy a FEN to the clipboard with the trailing fields
trimmed - most often the two clocks, sometimes everything after the
placement. chess.js validates strictly and rejects those outright, so
they are completed here before validation rather than reported to the
user as malformed.

## Usage

``` r
fen_complete(fen)
```

## Arguments

- fen:

  A FEN string with one to six fields.

## Value

A six-field FEN string.

## Details

Defaults are the conservative ones: White to move, no castling rights,
no en passant square, clocks at zero. Castling in particular is *not*
inferred from where the kings and rooks sit - a FEN that omits it is not
claiming those rights, and inventing them would silently change what the
position means.

## Examples

``` r
fen_complete("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq -")
#> [1] "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1"
```
