# Rasterize one piece image at a given square size

SVGs are rendered through the rsvg package rather than ImageMagick's own
SVG delegate. Many ImageMagick builds - including the prebuilt binaries
on Linux package managers - are compiled without librsvg and fall back
to a renderer whose output is poor enough to break template matching.
Going through rsvg makes rendering consistent everywhere. Raster sets
(webp/png) are read directly.

## Usage

``` r
read_piece_image(path, px)
```

## Arguments

- path:

  Path to a piece image.

- px:

  Target square size in pixels.

## Value

A magick image scaled to `px` by `px`.
