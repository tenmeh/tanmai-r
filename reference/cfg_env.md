# Read a configuration setting from the environment

Checks `TANMAI_<name>` first, then the `CHESSVISION_<name>` spelling
used before 1.2.0.

## Usage

``` r
cfg_env(name, default = "")
```

## Arguments

- name:

  The setting, without prefix - for example `"STOCKFISH"`.

- default:

  Returned when neither variable is set.

## Value

The configured value, or `default`.
