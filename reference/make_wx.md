# Create Spatial Lags of variables

Given a dataframe of numeric values and a spatial weights matrix,
calculate the spatial lag of each variable.

## Usage

``` r
make_wx(x, listw, order = NULL)
```

## Arguments

- x:

  a `data.frame` of independent variables generated with
  [`make_x()`](https://josiahparry.github.io/spdgp/reference/make_x.md).

- listw:

  a `listw` object generated with
  [`sim_grid_listw()`](https://josiahparry.github.io/spdgp/reference/sim_grid_listw.md).

- order:

  unused.

## Value

A `data.frame` of the spatially lagged variables.

## Examples

``` r
listw <- sim_grid_listw(10, 10)
x_vars <- make_x(100, mu = c(0.5, 1.2), var = c(1, 0.5)) 
res <- make_wx(x_vars, listw)
head(res)
#>     x_1_lag  x_2_lag
#> 1 2.1753107 1.957174
#> 2 1.2230313 1.373702
#> 3 1.0538553 1.374858
#> 4 0.9457799 1.331713
#> 5 1.0683191 1.602990
#> 6 1.0438814 1.362660
```
