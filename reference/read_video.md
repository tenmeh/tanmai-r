# Read a game from a recording of it being played

Takes a screen recording, an animated GIF, or a folder of screenshots,
and returns the game that was played - the same
[tanmai_game](https://tenmeh.github.io/tanmai-r/reference/tanmai_game.md)
that
[`read_pgn()`](https://tenmeh.github.io/tanmai-r/reference/read_pgn.md)
returns, so everything else in the package works on it unchanged.

## Usage

``` r
read_video(
  path,
  fps = 1,
  region = NULL,
  start = c("start", "first"),
  turn = c("w", "b"),
  max_plies = 2L,
  piece_sets = NULL,
  verbose = FALSE
)
```

## Arguments

- path:

  A video file, an animated GIF, or a directory of stills.

- fps:

  Frames to sample per second. One is usually plenty - it only has to be
  faster than the players are moving, not faster than the animation.

- region:

  Optional `c(x, y, width, height)` in pixels, if the board is part of a
  larger screen. By default each frame is auto-cropped.

- start:

  Where the game begins: `"start"` for the standard position, or
  `"first"` to anchor on whatever the first readable frame shows.

- turn:

  Side to move at the anchor. Ignored when `start = "start"`.

- max_plies:

  Longest move sequence that may be inferred between two frames. Two
  allows a frame to be missed entirely; more invites guessing.

- piece_sets:

  Template libraries to match against. Defaults to every set installed
  locally.

- verbose:

  Report progress while working through the frames.

## Value

A
[tanmai_game](https://tenmeh.github.io/tanmai-r/reference/tanmai_game.md),
with a `ledger` attribute recording what happened to every frame that
was looked at.

## Details

Nothing seen is trusted on its own. A frame joins the game only when
exactly one legal sequence of moves explains it, which is what makes
this work on real footage: a recording is full of frames showing a piece
halfway through a slide, or the board mid-redraw, and those either
explain nothing legal or reproduce a position the game has already been
in. Both are discarded. The count of what was accepted and what was
thrown away, and why, comes back as a `ledger` attribute rather than
being hidden.

## Examples

``` r
# \donttest{
# A folder of screenshots, one per move, works as well as video and needs
# nothing installed:
# game <- read_video("~/screenshots/my-game/")
# accuracy(evaluate(game))
# }
```
