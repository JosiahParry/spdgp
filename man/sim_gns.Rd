% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dgp.R
\name{sim_gns}
\alias{sim_gns}
\title{Simulate General Nested Model}
\usage{
sim_gns(u, xb, wxg, listw, rho = 0.5, lambda = 0.2, model = c("sar", "ma"))
}
\arguments{
\item{u}{an error vector}

\item{xb}{predicted x values as calculated by \code{make_xb()}}

\item{wxg}{predicted spatial lag effect as calculated by \code{make_wxg()}}

\item{listw}{a \code{listw} object generated with \code{sim_grid_listw()}.}

\item{rho}{the spatial autoregressive coefficient for the spatially lagged dependent variable.}

\item{lambda}{a value value between -1 and 1. The spatial autoregressive coefficient for the error term.}

\item{model}{default \code{"sar"}. Which model should be simulated. Provide \code{"ma"} for the moving average.}
}
\value{
A numeric vector
}
\description{
Simulate General Nested Model
}
\references{
\href{https://pysal.org/spreg/generated/spreg.dgp.dgp_gns.html#spreg.dgp.dgp_gns}{\code{spreg.dgp.dgp_gns}}
}
