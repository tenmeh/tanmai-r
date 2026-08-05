# The two shapes everything in the package speaks in.
#
# R CMD check found these missing, which was fair: every exported function
# refers to them and none of them said what they were.

#' A chess position
#'
#' A one-row data frame describing a single position, returned by [read_fen()]
#' and [read_board()]. It is an ordinary data frame with an extra class, so
#' `[`, dplyr and ggplot2 work on it without knowing anything about chess.
#'
#' @section Columns:
#' \describe{
#'   \item{fen}{The position, as a complete six-field FEN.}
#'   \item{turn}{Side to move, `"w"` or `"b"`.}
#'   \item{orientation}{Which colour was at the bottom of the board it was read
#'     from. Meaningful for a screenshot; conventional otherwise.}
#'   \item{piece_set}{The piece set matched, or `NA` when the position did not
#'     come from a picture.}
#'   \item{confident}{Whether the piece set was recognised well enough to
#'     trust. `NA` for adapters that do not read art - only a picture can be
#'     misread.}
#'   \item{margin, median_occ}{The two recognition signals behind `confident`:
#'     how far the winning piece set stood out from the runner-up, and how well
#'     it explained a typical occupied square.}
#'   \item{valid}{Whether the position is structurally legal.}
#'   \item{orientation_source}{Which signal decided the orientation.}
#'   \item{source}{Which adapter produced the row: `"fen"` or `"screenshot"`.}
#' }
#'
#' [evaluate()] adds `cp`, `best_uci` and `best_san`.
#'
#' @name tanmai_position
#' @seealso [tanmai_game]
NULL

#' A chess game
#'
#' A data frame with **one row per ply**, returned by [read_pgn()] and
#' [read_video()]. This is the shape the whole package is built around: every
#' analysis reads it and none of them ask which adapter produced it, which is
#' why a new way of getting a game in costs almost nothing.
#'
#' It is an ordinary data frame, so accuracy by player is a `summarise()`, the
#' evaluation graph is a `ggplot()`, and the moves that decided the game are a
#' `slice_max()`.
#'
#' @section Columns:
#' \describe{
#'   \item{ply}{Half-move number, from 1.}
#'   \item{move_no}{Full move number, as printed in a PGN.}
#'   \item{side}{Who moved, `"w"` or `"b"`. Derived from the position, not
#'     assumed, so a game starting from a set-up position is right.}
#'   \item{san, uci}{The move played, in both notations.}
#'   \item{fen_before, fen_after}{The positions either side of the move. Each
#'     row's `fen_after` is the next row's `fen_before`.}
#'   \item{cp}{Evaluation after the move, in centipawns, always from **White's**
#'     point of view so the sign means the same thing down the whole column.
#'     `NA` until [evaluate()] is run.}
#'   \item{cp_loss}{What the move cost, from the **mover's** point of view -
#'     the only reading under which "you lost three pawns" makes sense for both
#'     colours. Never negative.}
#'   \item{best_uci, best_san}{What the engine would have played instead.}
#'   \item{class}{A factor: best, good, inaccuracy, mistake or blunder.}
#'   \item{human_p}{Probability a human of a given rating plays this move.
#'     Reserved; not yet filled in.}
#' }
#'
#' @section Attributes:
#' `headers` carries a PGN's header tags. `ledger` (from [read_video()]) records
#' what became of every frame that was looked at.
#'
#' @name tanmai_game
#' @seealso [tanmai_position]
NULL
