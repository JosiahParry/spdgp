# Simiulate Matrix Exponential Spatial Lag Model

Simiulate Matrix Exponential Spatial Lag Model

## Usage

``` r
sim_mess(u, xb, listw, rho = 0.5)
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

[`dgp_mess`](https://pysal.org/spreg/_modules/spreg/dgp.html#dgp_mess)
