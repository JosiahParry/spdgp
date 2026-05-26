# Calculate the effect of spatially lagged X variables

This function computes the contribution of spatially lagged X variables
based on provided coefficients. The function takes the spatially lagged
variables (`wx`, see
[`make_wx()`](https://josiahparry.github.io/spdgp/reference/make_wx.md))
and multiplies them by their corresponding regression coefficients
(`gamma`), returning the predicted influence of the spatial lags. Only
spatial lags are considered; the original X variables are not included
in this calculation.

## Usage

``` r
make_wxg(wx, gamma)
```

## Arguments

- wx:

  a matrix of spatially lagged x variables.

- gamma:

  a vector of coefficients for the spatially lagged x variables. Its
  length must match the number of columns in wx.

## Value

A numeric vector

## Examples

``` r
grid <- make_square_grid(5)
listw <- spdep::nb2listw(spdep::poly2nb(grid))
x <- make_x(25, c(0,1), c(1,4))
wx <- make_wx(x, listw)
gamma <- c(1.75, 0.4)
make_wxg(wx, gamma) 
#>  [1] 5.485891 4.176288 3.033108 3.522886 3.116918 4.415962 4.762772 4.128422
#>  [9] 4.032427 3.541543 5.699027 4.719449 4.575163 4.515919 5.625042 4.059987
#> [17] 4.660237 4.677603 4.975429 5.360746 4.993139 5.152251 4.870010 5.326420
#> [25] 6.248927
```
