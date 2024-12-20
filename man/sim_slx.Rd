% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dgp.R
\name{sim_slx}
\alias{sim_slx}
\title{Simulate Spatially Lagged X (SLX) model}
\usage{
sim_slx(u, xb, wxg)
}
\arguments{
\item{u}{an error vector}

\item{xb}{predicted x values as calculated by \code{make_xb()}}

\item{wxg}{predicted spatial lag effect as calculated by \code{make_wxg()}}
}
\value{
A numeric vector
}
\description{
This function simulates the y values of an SLX model, where the dependent
variable is influenced by both the original and spatially lagged x variables.
}
\examples{
ncol <- 20
n <- ncol^2
listw <- sim_grid_listw(ncol, ncol)  # Create spatial weights for a grid
u <- make_error(n, method = "normal")  # Simulate random errors
x <- make_x(n, method = "uniform")  # Generate x variables
xb <- make_xb(x, c(1, 2))  # Calculate xb using the original x and coefficients
wx <- make_wx(x, listw)  # Generate spatially lagged x variables
wxg <- make_wxg(wx, 0.5)  # Calculate the effect of the spatial lags
y <- sim_slx(u, xb, wxg)  # Simulate the SLX model outcome
df <- data.frame(y, x)
spatialreg::lmSLX(y ~ ., data = df, listw = listw)  # Estimate the SLX model
}
\references{
\href{https://pysal.org/spreg/generated/spreg.dgp.dgp_slx.html#spreg.dgp.dgp_slx}{\code{spreg.dgp.dgp_slx}}
}
