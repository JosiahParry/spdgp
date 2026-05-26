# Simulate Spatial Error Process

This function generates a pure spatial error process, which is useful
when you only want to simulate the error structure without including any
deterministic part (i.e., no xb term). This can be used to analyze or
simulate the behavior of spatially dependent errors in isolation.

## Usage

``` r
sim_error(u, listw, lambda = 0.5, model = c("sar", "ma"))
```

## Arguments

- u:

  an error vector

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

See
[`spreg.dgp.dgp_errproc`](https://pysal.org/spreg/generated/spreg.dgp.dgp_errproc.html#spreg.dgp.dgp_errproc)

## Examples

``` r
listw <- sim_grid_listw(5) 
u <- make_error(25)
sim_error(u, listw)
#>  [1]  1.44113298  1.06192938  0.62039368  3.06497032  3.43851209  1.67072025
#>  [7] -0.67648774  0.85430425  1.58967407  0.46169945  1.78216038  0.97565794
#> [13]  0.78904675 -0.16057308  1.41110958  0.37216518 -0.35058399  1.60513442
#> [19]  1.33026876  1.29947401  0.43106292 -0.64301630  1.38834405  0.06371485
#> [25]  0.18934935
```
