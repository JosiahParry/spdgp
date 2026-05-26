# Simulate the Spatial Autoregressive Model with Autoregressive Errors

Generate `y` values for the "combo" / SARAR / SAC model.

## Usage

``` r
sim_sarar(u, xb, listw, rho = 0.5, lambda = 0.2, model = c("sar", "ma"))
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

- lambda:

  a value value between -1 and 1. The spatial autoregressive coefficient
  for the error term.

- model:

  default `"sar"`. Which model should be simulated. Provide `"ma"` for
  the moving average.

## Value

A numeric vector

## References

[`spreg.dgp.dgp_lagerr`](https://pysal.org/spreg/generated/spreg.dgp.dgp_lagerr.html#spreg.dgp.dgp_lagerr)
