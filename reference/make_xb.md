# Calculate predicted X values based on coefficients

This function calculates predicted x values based on regression
coefficients. The results of this function can be passed to other
`sim_*()` functions.

## Usage

``` r
make_xb(x, beta)
```

## Arguments

- x:

  a `data.frame` of independent variables generated with
  [`make_x()`](https://josiahparry.github.io/spdgp/reference/make_x.md).

- beta:

  a vector of the beta coefficients for each of the variables. There
  must be `ncol(x) + 1` values. The first element of the vector is the
  intercept.

## Value

A numeric vector

## Examples

``` r
x <- make_x(25, c(0,1), c(1,4))
betas <- c(1, 1.5, -2)
make_xb(x, betas)
#>  [1]  -1.11345578   5.00760431   0.26685336  -6.95484038   0.01315884
#>  [6]  -4.85035563   2.40743533  -6.23276219  -7.72870528   3.19964091
#> [11]  -0.35676565  -0.12569310   1.85552885 -10.66832705   0.30153068
#> [16]  -8.47825224  -4.91882171  -1.53868422  -8.16142521  -0.85349384
#> [21]   3.35121449  -9.66492260   1.25437653  -9.44993324   2.31102659
```
