# Generate spatial weights matrix for a grid

Create a spatial weights matrix based on a square grid structure.

## Usage

``` r
sim_grid_listw(nrow, ncol = nrow, style = "W", type = c("queen", "rook"))
```

## Arguments

- nrow:

  the number of rows in the grid.

- ncol:

  defaults to `nrow`. The number columns in the grid.

- style:

  the spatial weights style. Defaults to row standardized. See
  [`spdep::nb2listw()`](https://r-spatial.github.io/spdep/reference/nb2listw.html)
  for more.

- type:

  default `"queen"`. Can also be `"rook"`.

## Value

A `listw` object by `spdep` package.

## Examples

``` r
sim_grid_listw(10, 5)
#> Characteristics of weights list object:
#> Neighbour list object:
#> Number of regions: 50 
#> Number of nonzero links: 314 
#> Percentage nonzero weights: 12.56 
#> Average number of links: 6.28 
#> 
#> Weights style: W 
#> Weights constants summary:
#>    n   nn S0       S1       S2
#> W 50 2500 50 16.82458 203.3558
```
