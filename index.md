# tanmai

Read a chess position into R from a **screenshot**, a **FEN**, a
**PGN**, or a **recording of a game being played**.

Every other chess package in R starts from a position you already have.
This one starts a step earlier.

``` r

library(tanmai)

read_board("screenshot.png")     # a position, and how confident it is
read_fen("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq -")
read_pgn("1. e4 e5 2. Nf3 Nc6")  # a game
read_video("my-game.mp4")        # also a game
```

## Two shapes, four ways in

A **position** is one row. A **game** is one row per ply:

``` r

game <- read_pgn("1. e4 e5 2. Nf3 Nc6 3. Bb5 a6")
names(game)
#>  [1] "ply"        "move_no"  "side"     "san"      "uci"
#>  [6] "fen_before" "fen_after" "cp"      "cp_loss"  "best_uci"
#> [11] "best_san"   "class"    "human_p"
```

Both are plain data frames. `[`, dplyr and ggplot2 work on them without
knowing anything about chess, and nothing downstream asks which adapter
produced them, which is why adding a fourth way in cost almost nothing.

## Recognition tells you when it is unsure

Reading a board off a picture is the only input that can be *wrong*, so
it is the only one that reports how sure it is:

``` r

pos <- read_board("screenshot.png")
pos$confident
#> TRUE
```

When that is `FALSE` the artwork did not match any installed piece set
well - usually a Chess.com or custom theme. The FEN still comes back,
because a guess you can correct beats no answer, but it is flagged
rather than presented as fact.

## Reading a game off a recording

``` r

game <- read_video("my-game.mp4")   # or a GIF, or a folder of screenshots
attr(game, "ledger")
#>       outcome frames
#> 1     skipped     12
#> 2    accepted     10
#> 3 unexplained      1
```

A recording is full of frames that must not be believed: a piece halfway
through a slide, the board mid-redraw, a piece picked up and put back. A
frame joins the game only when **exactly one legal sequence of moves
explains it**, so those are discarded rather than turned into invented
moves - and what happened to each frame is reported rather than hidden.

## Judging a game

Everything above works with no chess engine at all. Judging a game needs
one:

``` r

game <- evaluate(read_pgn(my_pgn))

accuracy(game)
#>   side moves  acpl accuracy inaccuracies mistakes blunders
#> 1    w    23  58.6     84.3            3        2        2
#> 2    b    22 513.5     77.5            3        2        3

turning_points(game)
```

`cp` is always from White’s point of view, so the sign means the same
thing all the way down. `cp_loss` is from the mover’s, because “you lost
three pawns” only reads correctly that way for both colours.

The accuracy figure uses Lichess’s published formula, so it is
comparable with the number they show rather than a private invention.

## Installation

``` r

# install.packages("remotes")
remotes::install_github("tenmeh/tanmai-r")
```

Optional, and found automatically if present:

- **Stockfish** - for
  [`evaluate()`](https://tenmeh.github.io/tanmai-r/reference/evaluate.md),
  [`accuracy()`](https://tenmeh.github.io/tanmai-r/reference/accuracy.md)
  and
  [`turning_points()`](https://tenmeh.github.io/tanmai-r/reference/turning_points.md)
- **ffmpeg** - for
  [`read_video()`](https://tenmeh.github.io/tanmai-r/reference/read_video.md)
  on video formats (GIFs and folders of images need nothing extra)

## The app

An interactive Shiny front end lives at
[tenmeh/tanmai](https://github.com/tenmeh/tanmai).

## Licence

GPL-3. The bundled cburnett piece artwork is GPL-3 and is not
incidental - it is the default template set and what the test suite
renders against - so the package is GPL-3 rather than permissively
licensed. See
[LICENSE.md](https://tenmeh.github.io/tanmai-r/LICENSE.md).
