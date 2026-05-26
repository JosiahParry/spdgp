# Simulate the Spatial Durbin Model

Simulate the Spatial Durbin Model

## Usage

``` r
sim_durbin(u, xb, wxg, listw, rho = 0.5)
```

## Arguments

- u:

  an error vector

- xb:

  predicted x values as calculated by
  [`make_xb()`](https://josiahparry.github.io/spdgp/reference/make_xb.md)

- wxg:

  predicted spatial lag effect as calculated by
  [`make_wxg()`](https://josiahparry.github.io/spdgp/reference/make_wxg.md)

- listw:

  a `listw` object generated with
  [`sim_grid_listw()`](https://josiahparry.github.io/spdgp/reference/sim_grid_listw.md).

- rho:

  the spatial autoregressive coefficient for the spatially lagged
  dependent variable.

## Value

A numeric vector

## References

[`spreg.dgp.dgp_spdurbin`](https://pysal.org/spreg/generated/spreg.dgp.dgp_spdurbin.html#spreg.dgp.dgp_spdurbin)

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
wx <- make_wx(x, listw)
wxg <- make_wxg(wx, c(-2, 1.5))
y <- sim_durbin(u, xb, wxg, listw, rho = 0.5)

# combine data 
df <- cbind(y = y, x)

# fit SDM
spatialreg::lagsarlm(y ~ ., df, listw, Durbin = TRUE)
#> 
#> Call:
#> spatialreg::lagsarlm(formula = y ~ ., data = df, listw = listw, 
#>     Durbin = TRUE)
#> Type: mixed 
#> 
#> Coefficients:
#>         rho (Intercept)         x_1         x_2     lag.x_1     lag.x_2 
#>   0.3725901   2.0088068   2.0910376  -2.9380981  -1.6759722   0.8912780 
#> 
#> Log likelihood: -581.025 
```
