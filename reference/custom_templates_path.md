# Path for user-calibrated ("custom") templates

Deliberately does not create the directory. This is called whenever
template libraries are *loaded*, and creating a directory in the user's
config space as a side effect of reading would be wrong on any system
and is forbidden on CRAN. The directory is created by whatever actually
writes a calibration.

## Usage

``` r
custom_templates_path()
```

## Value

The RDS path where a manual calibration is persisted across restarts.

## Examples

``` r
custom_templates_path()
#> [1] "/home/runner/.config/R/tanmai/templates_custom.rds"
```
