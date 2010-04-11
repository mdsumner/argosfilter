\name{distance}
\alias{distance}
\alias{distanceTrack}

\title{
Great circle distance between geographical coordinates
}
\description{
Function \code{distance} calculates the distance, in km, between two geographical locations
following the great circle route.
Function \code{distanceTrack} calculates the distance, in km, between a sequence of locations.
}
\usage{
distance(lat1, lat2, lon1, lon2)
distanceTrack(lat,lon)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{lat1}{ latitude of the first location, in decimal degrees}
  \item{lat2}{ latitude of the second location, in decimal degrees}
  \item{lon1}{ longitude of the first location, in decimal degrees}
  \item{lon2}{ longitude of the second location, in decimal degrees}
  \item{lat}{vector of latitudes, in decimal degrees}
  \item{lon}{vector of longitudes, in decimal degrees}
}
\details{
 Distances are calculated using spherical trigonometry. See details on formulae in Zwillinger (2003).
}
\value{
\code{distance} returns the distance between the two locations. 
\code{distanceTrack} returns a vector of distances between the sequence of locations.
In both cases, distances are given in km.
}
\references{
Zwillinger D. (2003) \emph{Standard Mathematical Tables and Formulae}, 31st edition. 
Chapman & Hall/CRC, Boca Raton, FL.
}
\author{Carla Freitas}

\seealso{\code{\link{bearing}}} 
\examples{
# Distance between two geographical locations
lat1<-rnorm(1,80)
lon1<-rnorm(1,20)
lat2<-rnorm(1,80)
lon2<-rnorm(1,20)
distance(lat1,lat2,lon1,lon2)

# Distance between a sequence of 10 geographical locations:
lat<-rnorm(10,80)
lon<-rnorm(10,20)
distanceTrack(lat,lon)
}

\keyword{spatial}
