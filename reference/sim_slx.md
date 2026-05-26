# Simulate Spatially Lagged X (SLX) model

This function simulates the y values of an SLX model, where the
dependent variable is influenced by both the original and spatially
lagged x variables.

## Usage

``` r
sim_slx(u, xb, wxg)
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

## Value

A numeric vector

## References

[`spreg.dgp.dgp_slx`](https://pysal.org/spreg/generated/spreg.dgp.dgp_slx.html#spreg.dgp.dgp_slx)

## Examples

``` r
ncol <- 20
n <- ncol^2
listw <- sim_grid_listw(ncol, ncol)  # Create spatial weights for a grid
u <- make_error(n, method = "normal")  # Simulate random errors
x <- make_x(n, method = "uniform")  # Generate x variables
xb <- make_xb(x, c(1, 2))  # Calculate xb using the original x and coefficients
wx <- make_wx(x, listw)  # Generate spatially lagged x variables
wxg <- make_wxg(wx, 0.5)  # Calculate the effect of the spatial lags
y <- sim_slx(u, xb, wxg)  # Simulate the SLX model outcome
df <- data.frame(y, x)
spatialreg::lmSLX(y ~ ., data = df, listw = listw)  # Estimate the SLX model
#> 
#> Call:
#> lm(y ~ x_1 + lag.x_1, data = df, listw = listw)
#> 
#> Coefficients:
#> (Intercept)          x_1      lag.x_1  
#>      1.2991       1.9596       0.3903  
#> 
```
