# Simulate Spatial Error Model (SEM)

Simulate the y values for an SEM model.

## Usage

``` r
sim_sem(u, xb, listw, lambda = 0.5, model = c("sar", "ma"))
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

- lambda:

  a value value between -1 and 1. The spatial autoregressive coefficient
  for the error term.

- model:

  default `"sar"`. Which model should be simulated. Provide `"ma"` for
  the moving average.

## Value

A numeric vector

## References

[`spreg.dgp.dgp_sperror`](https://pysal.org/spreg/generated/spreg.dgp.dgp_sperror.html#spreg.dgp.dgp_sperror)

## Examples

``` r
ncol <- 10
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
y <- sim_sem(u, xb, listw)

# combine data 
df <- cbind(y = y, x)

# fit SEM model
# Note lambda, x_1, and x_2 estimates.
spatialreg::errorsarlm(y ~ ., df, listw)
#> 
#> Call:
#> spatialreg::errorsarlm(formula = y ~ ., data = df, listw = listw)
#> Type: error 
#> 
#> Coefficients:
#>      lambda (Intercept)         x_1         x_2 
#>   0.4207722  -0.7156728   2.1358333  -2.6173289 
#> 
#> Log likelihood: -143.7965 
```
