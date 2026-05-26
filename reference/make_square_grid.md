# Create a square grid

Creates a square grid with `ncol` and `nrow` dimensions.

## Usage

``` r
make_square_grid(nrow, ncol = nrow)
```

## Arguments

- nrow:

  the number of rows in the grid.

- ncol:

  defaults to `nrow`. The number columns in the grid.

## Value

An `sfc` object by `sf` package.

## Examples

``` r
make_square_grid(3, 2)
#> Geometry set for 6 features 
#> Geometry type: POLYGON
#> Dimension:     XY
#> Bounding box:  xmin: 0 ymin: 0 xmax: 2 ymax: 3
#> CRS:           NA
#> First 5 geometries:
#> POLYGON ((0 0, 1 0, 1 1, 0 1, 0 0))
#> POLYGON ((1 0, 2 0, 2 1, 1 1, 1 0))
#> POLYGON ((0 1, 1 1, 1 2, 0 2, 0 1))
#> POLYGON ((1 1, 2 1, 2 2, 1 2, 1 1))
#> POLYGON ((0 2, 1 2, 1 3, 0 3, 0 2))
```
