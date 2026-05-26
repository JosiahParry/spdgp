# Simulate an error term

Simulate an error term

## Usage

``` r
make_error(
  n = 10,
  mu = 0,
  var = 1,
  method = c("normal", "laplace", "cauchy", "lognormal")
)
```

## Arguments

- n:

  the number of values to simulate.

- mu:

  the sample average.

- var:

  the sample variance. The `sqrt(var)` is passed to
  [`rnorm()`](https://rdrr.io/r/stats/Normal.html) and
  [`rlnorm()`](https://rdrr.io/r/stats/Lognormal.html) for normal and
  laplace distributions. `sqrt(var / 2)` is used for `laplace()` .

- method:

  must be one of `"normal"`, `"laplace"`, `"cauchy"`, or `"lognormal"`.

## Value

A numeric vector

## Details

- `"normal"`: fit with [`rnorm()`](https://rdrr.io/r/stats/Normal.html)

- `"laplace"`: fit with
  [`smoothmest::rdoublex()`](https://rdrr.io/pkg/smoothmest/man/ddoublex.html)

- `"cauchy"`: fit with
  [`rcauchy()`](https://rdrr.io/r/stats/Cauchy.html)

- `"lognormal"`: fit with
  [`rlnorm()`](https://rdrr.io/r/stats/Lognormal.html)
