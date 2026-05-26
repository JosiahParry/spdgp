# Simulate General Nested Model

Simulate General Nested Model

## Usage

``` r
sim_gns(u, xb, wxg, listw, rho = 0.5, lambda = 0.2, model = c("sar", "ma"))
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

- lambda:

  a value value between -1 and 1. The spatial autoregressive coefficient
  for the error term.

- model:

  default `"sar"`. Which model should be simulated. Provide `"ma"` for
  the moving average.

## Value

A numeric vector

## References

[`spreg.dgp.dgp_gns`](https://pysal.org/spreg/generated/spreg.dgp.dgp_gns.html#spreg.dgp.dgp_gns)
