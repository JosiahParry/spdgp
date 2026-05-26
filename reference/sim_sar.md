# Simulate Spatial Lag Model (SAR)

Simulate y for a SAR model.

## Usage

``` r
sim_sar(u, xb, listw, rho = 0.5)
```

## Arguments

- u:

  an error vector

- xb:

  predicted x values as calculated by
  [`make_xb()`](https://josiahparry.github.io/spdgp/reference/make_xb.md)

- listw:

  a `listw` object generated with
  [`sim_grid_listw()`](https://josiahparry.github.io/spdgp/reference/sim_grid_listw.md).

- rho:

  the spatial autoregressive coefficient for the spatially lagged
  dependent variable.

## Value

A numeric vector

## References

[`spreg.dgp.dgp_lag`](https://pysal.org/spreg/generated/spreg.dgp.dgp_lag.html#spreg.dgp.dgp_lag)

## Examples

``` r
ncol <- 20
n <- ncol^2
listw <- sim_grid_listw(ncol, ncol)  # Create spatial weights for a grid
u <- make_error(n)  # Simulate random errors
x <- make_x(
  n,
  mu = c(0.25, 5),
  var = c(1, 0.75),
  method = "normal"
)  # Generate x variables

# create xb with intercept = 1, beta1 = 2, beta2 = -3
xb <- make_xb(x, c(1, 2, -3))
y <- sim_sar(u, xb, listw)

# combine data 
df <- cbind(y = y, x)

# fit SAR model
# Note lambda, x_1, and x_2 estimates.
spatialreg::stsls(y ~ ., df, listw)
#> 
#> Call:
#> spatialreg::stsls(formula = y ~ ., data = df, listw = listw)
#> 
#> Coefficients:
#>         Rho (Intercept)         x_1         x_2 
#>   0.5066124   1.2694876   2.0348833  -3.0126382 
#> 
```
