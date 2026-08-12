# CRAN forbids writing anywhere outside tempdir() without the user's consent.
# Every path helper below names a location in the user's cache or config space,
# and each is called on ordinary *read* paths - recognition looks for installed
# piece sets, engine discovery looks for a cached binary. Creating the directory
# while answering "where would it be?" is the bug these tests exist to catch;
# it shipped once in all three helpers at once.
#
# The directory is created only by whatever actually writes: ensure_stockfish(),
# ensure_maia(), fetch_piece_set() and save_template_library().

# Redirect R_user_dir() at a sandbox that does not exist, so that anything
# created is both visible and harmless.
local_pristine_user_dirs <- function(env = parent.frame()) {
  sandbox <- file.path(withr::local_tempdir(.local_envir = env), "user-dirs")
  withr::local_envvar(
    c(
      R_USER_CACHE_DIR  = file.path(sandbox, "cache"),
      R_USER_CONFIG_DIR = file.path(sandbox, "config")
    ),
    .local_envir = env
  )
  sandbox
}

test_that("path helpers do not create anything just by being asked for a path", {
  sandbox <- local_pristine_user_dirs()

  # Each of these returns a path under the sandbox and must not create it.
  expect_type(stockfish_bin_dir(), "character")
  expect_type(piece_sets_dir(), "character")
  expect_type(maia_dir(), "character")
  expect_type(custom_templates_path(), "character")

  expect_false(dir.exists(sandbox))
})

test_that("engine and model discovery do not write to the user's cache", {
  sandbox <- local_pristine_user_dirs()

  # These search the cache for an already-installed binary. Whether they find
  # one depends on the machine; that they leave no trace does not.
  invisible(find_local_engine())
  invisible(find_lc0())
  invisible(has_engine())
  invisible(human_model_available(1500))

  expect_false(dir.exists(sandbox))
})

test_that("reading a position leaves the filesystem untouched", {
  sandbox <- local_pristine_user_dirs()

  # The whole no-engine read path, which is what CRAN runs from the examples.
  start <- "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR"
  expect_s3_class(read_fen(paste(start, "w KQkq - 0 1")), "tanmai_position")
  board <- render_position(fen_to_symbols(start))
  invisible(read_board(board))
  invisible(available_piece_sets())

  expect_false(dir.exists(sandbox))
})
