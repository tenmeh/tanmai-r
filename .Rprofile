# Development only, and build-ignored: the roxygen/testthat toolchain lives in
# the sibling app project's renv cache rather than the user library. This does
# not affect the package itself, which declares everything it needs in
# DESCRIPTION.
local({
  dev <- file.path(
    Sys.getenv("LOCALAPPDATA"), "R", "cache", "R", "renv", "library",
    "chess-golem-aa990bd7", "windows", "R-4.6", "x86_64-w64-mingw32"
  )
  if (dir.exists(dev)) .libPaths(c(.libPaths(), dev))
})
