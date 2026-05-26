# Simulate X variables

Simulates independent variables.

## Usage

``` r
make_x_bivariate(n = 5, mu = 1, cor = 0.25, var = c(1, 1))

make_x_uniform(n = 5, var = 1)

make_x_normal(n = 5, mu = 0, var = 1)

make_x(
  n = 5,
  mu = 0,
  var = 1,
  cor = 0,
  method = c("uniform", "normal", "bivnormal")
)
```

## Arguments

- n:

  the number of values to simulate.

- mu:

  the sample average.

- cor:

  correlation between bivariate normal

- var:

  the sample variance. The `sqrt(var)` is passed to
  [`rnorm()`](https://rdrr.io/r/stats/Normal.html) and
  [`rlnorm()`](https://rdrr.io/r/stats/Lognormal.html) for normal and
  laplace distributions. `sqrt(var / 2)` is used for `laplace()` .

- method:

  must be one of `"uniform"` (default), `"normal"`, or `"bivnormal"`
  (bivariate normal).

## Value

A `data.frame` of the simulated independent variables.

## Examples

``` r
make_x(10, mu = c(0.5, 1.2), var = c(1, 0.5)) 
#>          x_1       x_2
#> 1  1.7628590 0.3082836
#> 2  1.4454462 2.2979954
#> 3  2.5182247 1.9627152
#> 4  2.2090075 1.8568446
#> 5  1.3732044 1.3045129
#> 6  3.3237453 1.3393927
#> 7  1.0345818 0.2349710
#> 8  0.1739019 0.9512587
#> 9  1.9959718 0.4221742
#> 10 0.7548479 1.6919259
```
