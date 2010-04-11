\name{bearing}
\alias{bearing}
\alias{bearingTrack}
\title{Bearing between geographical locations}
\description{
Function \code{bearing} calculates the bearing, in degrees, between two geographical locations.
Function \code{bearingTrack} calculates the bearing between a sequence of locations.
}
\usage{
bearing(lat1, lat2, lon1, lon2)
bearingTrack(lat, lon)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{lat1}{latitude of the first location, in decimal degrees}
  \item{lat2}{latitude of the second location, in decimal degrees}
  \item{lon1}{longitude of the first location, in decimal degrees}
  \item{lon2}{longitude of the second location, in decimal degrees}
  \item{lat}{vector of latitudes, in decimal degrees}
  \item{lon}{vector of longitudes, in decimal degrees}
}
\details{
Bearings are calculated using spherical trigonometry. Formulas are given in
Zwillinger (2003).
}
\value{
\code{bearing} returns the bearing, in degrees, between the first location and
the second location. 0 is North. \code{bearingTrack} returns a vector of bearings between the sequence 
of locations.
}
\references{
Zwillinger D. (2003) \emph{Standard Mathematical Tables and Formulae}, 31st edition. 
Chapman & Hall/CRC, Boca Raton, FL.
}
\author{Carla Freitas}
\seealso{\code{\link{distance}}} 
\examples{
# Bearing between two geographical locations:
lat1<-rnorm(1,80)
lat2<-rnorm(1,80)
lon1<-rnorm(1,20)
lon2<-rnorm(1,20)
bearing(lat1,lat2,lon1,lon2)

# Bearing between a sequence of 10 geographical locations:
lat<-rnorm(10,80)
lon<-rnorm(10,20)
bearingTrack(lat,lon)
}

\keyword{spatial}