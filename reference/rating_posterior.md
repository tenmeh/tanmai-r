# Posterior over ratings from accumulated log-likelihoods

A uniform prior over the available networks, so the posterior is the
softmax of the log-likelihoods. Computed by subtracting the maximum
first, because the log-likelihood of a long game is a large negative
number and [`exp()`](https://rdrr.io/r/base/Log.html) of it underflows
to zero.

## Usage

``` r
rating_posterior(loglik)
```

## Arguments

- loglik:

  A named numeric vector of total log-likelihoods per rating.

## Value

A named numeric vector summing to 1, or all `NA` if nothing is known.
