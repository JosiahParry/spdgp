# Simulate Spatially Lagged X Error Model

Simulate Spatially Lagged X Error Model

## Usage

``` r
sim_slx_error(u, xb, wxg, listw, lambda = 0.5, model = c("sar", "ma"))
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

- lambda:

  a value value between -1 and 1. The spatial autoregressive coefficient
  for the error term.

- model:

  default `"sar"`. Which model should be simulated. Provide `"ma"` for
  the moving average.

## Value

A numeric vector

## References

[`spreg.dgp.dgp_slxerror`](https://pysal.org/spreg/generated/spreg.dgp.dgp_slxerror.html#spreg.dgp.dgp_slxerror)
