# cran-comments

## Submission

This is a new submission. tanmai has not previously been on CRAN.

## Test environments

- Local: Windows 11, R 4.6.1
- GitHub Actions: Ubuntu 24.04, R release

## R CMD check results

0 errors | 0 warnings | 0 notes

## Notes for the reviewer

**Optional external programs.** `SystemRequirements` lists Stockfish and ffmpeg,
both optional. Everything that reads a position - `read_fen()`, `read_board()`,
`read_pgn()`, and `read_video()` on GIFs and image folders - works with neither
installed. Only `evaluate()`, `accuracy()` and `turning_points()` need an
engine, and the tests covering them skip when one is absent, so the suite passes
on a machine with no engine at all.

**Nothing is written outside tempdir().** The package can download a Stockfish
binary, Lichess piece art, and Maia weight files, but only when the user calls
an explicit `setup_*`/`ensure_*` function, and only into
`tools::R_user_dir("tanmai", ...)`. The path helpers that name those locations
deliberately do not create them, so merely reading a position cannot leave
anything on disk. `tests/testthat/test-cran-policy.R` enforces this: it points
`R_user_dir()` at an empty sandbox, runs the read paths and the examples, and
asserts the sandbox is never created.

**Nothing accesses the network during checks.** No example, test or vignette
downloads anything. The vignette is `eval = FALSE` throughout, so no chunk
executes at build time.
