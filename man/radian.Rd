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
\details{}
\value{
Returns a vector of values in radians.
}
\references{
}
\author{Carla Freitas}
\note{}
}
\seealso{} 

\examples{
# Convert latitudes and longitudes from decimal degrees to radians
lat<-rnorm(10,80)
lon<-rnorm(10,20)
lat_rad<-radian(lat)
lon_rad<-radian(lon)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{}
\keyword{}% __ONLY ONE__ keyword per line
