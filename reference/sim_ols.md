# Simulate OLS

Simulate a y variable for an Ordinary Least Squares (OLS) regression.

## Usage

``` r
sim_ols(u, xb)
```

## Arguments

- u:

  an error vector

- xb:

  predicted x values as calculated by
  [`make_xb()`](https://josiahparry.github.io/spdgp/reference/make_xb.md)

## Value

A numeric vector

## References

[`spreg.dgp.dgp_ols`](https://pysal.org/spreg/generated/spreg.dgp.dgp_ols.html#spreg.dgp.dgp_ols)

## Examples

``` r
u <- make_error(50, method = "normal")
x <- make_x(50)
xb <- make_xb(x, c(1,2))
y <- sim_ols(u, xb)
lm(y ~ x[[1]])
#> 
#> Call:
#> lm(formula = y ~ x[[1]])
#> 
#> Coefficients:
#> (Intercept)       x[[1]]  
#>       1.253        1.898  
#> 
```
