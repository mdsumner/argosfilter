\name{radian}
\alias{radian}

\title{Degrees to radians}

\description{Converts degrees to radians}

\usage{
radian(degree)
}

\arguments{
  \item{degree}{vector of values in degrees}
}

\value{
Returns a vector of values in radians.
}

\author{Carla Freitas}

\examples{
# Convert latitudes and longitudes from decimal degrees to radians
lat<-rnorm(10,80)
lon<-rnorm(10,20)
lat_rad<-radian(lat)
lon_rad<-radian(lon)
}

\keyword{spatial}

