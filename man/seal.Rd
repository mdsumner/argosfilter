\name{seal}
\alias{seal}
\docType{data}
\title{Satellite tracking data from a ringed seal}
\description{
 Satellite tracking data from a ringed seal tagged in Svalbard, Norway.
 Data were provided by C. Lydersen and K. M. Kovacs (Norwegian Polar Institute).
}
\usage{data(seal)}
\format{
  A data frame with 1561 observations on the following 4 variables.
  \describe{
    \item{\code{dtime}}{a vector of class POSIXt with date and time for each location}
    \item{\code{lat}}{a numeric vector with latitudes, in decimal degrees}
    \item{\code{lon}}{a numeric vector with longitudes, in decimal degrees}
    \item{\code{lc}}{a numeric vector with location classes LC (-9 refers to LC Z, -2 to LC B and -1 to LC A)}
  }
}

\examples{
data(seal)
lat<-seal$lat
lon<-seal$lon
# plot unfiltered data
plot(lon,lat)
}
\keyword{datasets}
