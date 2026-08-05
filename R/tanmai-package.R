# Package-level documentation and imports.
#
# Note: each @importFrom tag must fit on a single line - roxygen2 rejects a
# wrapped one - so magick's imports are split across several tags.

#' tanmai: Read Chess Positions from Screenshots, FEN, PGN and Video
#'
#' Four ways to get a chess position into R, all producing the same two data
#' frames: a one-row position, or a game with one row per ply. Nothing
#' downstream asks which one you used, which is why they cost so little to add.
#'
#' * [read_board()] reads a screenshot of a board, and reports how confident it
#'   is rather than silently guessing.
#' * [read_fen()] takes the position as text, filling in the fields chess sites
#'   habitually trim off the end.
#' * [read_pgn()] reads a game you already have.
#' * [read_video()] reads a game out of a recording of it being played.
#'
#' With a Stockfish engine installed, [evaluate()], [accuracy()] and
#' [turning_points()] say what the game was worth. Without one, everything that
#' reads a position still works - the engine is optional at every level.
#'
#' @keywords internal
#' @importFrom magick image_read image_info image_data image_resize
#' @importFrom magick image_crop image_convert image_blank image_composite
#' @importFrom magick image_write geometry_area geometry_point
#' @importFrom rsvg rsvg_png
#' @importFrom processx process
#' @importFrom jsonlite fromJSON base64_dec
#' @importFrom V8 v8
#' @importFrom stats median var setNames runif quantile
#' @importFrom tools R_user_dir file_ext
#' @importFrom utils download.file unzip untar packageVersion head
"_PACKAGE"

# Used throughout; defined here rather than in whichever file happened to need
# it first.
`%||%` <- function(a, b) if (is.null(a)) b else a
