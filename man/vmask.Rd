\name{vmask}
\alias{vmask}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Filter locations for speed}
\description{
 This function filters location data obtained from Argos, using the 
 MacConnell al. (1992) algorithm.
}
\usage{
vmask(lat, lon, dtime, vmax)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{lat}{a numeric vector of latitudes, in decimal degrees}
  \item{lon}{a numeric vector of longitudes, in decimal degrees}
  \item{dtime}{a vector of class POSIXct with date and time for each location}
  \item{vmax}{speed threshold, in m/s}
}
\details{
 Locations are filtered using the algorithm described in MacConnell et al. (1992).
 Since this algorithm calculates for each location the root mean square (rms) of the speeds
 to the previous, 2nd previous, next and 2nd next location, high swimming speeds can be
 obtained for points that are adjacent to outlier locations. Therefore, when the algorithm is applied 
 to a set of locations, only the peaks in rms (that are above the maximum speed) are removed. 
 Other locations are not removed even if above the speed limit. rms is then recalculated n times
 until all locations are below the speed threshold.
}
\value{
  Returns a vector with the following elements: \code{"removed"} (location removed by the filter),
  \code{"not"} (location not removed) and \code{"end_location"} (location at the end
  of the track where the algorithm could not be applied).
}
\references{
McConnell, B.J., Chambers, C. and Fedak, M.A. (1992) Foraging ecology of southern
elephant seals in relation to the bathymetry and productivity of the Southern Ocean.
\emph{Antarctic Science} 4:393-398.
}
\author{Carla Freitas}
\note{}
\seealso{\code{\link{sdafilter}}} 

\examples{
data(seal)
lat<-seal$lat
lon<-seal$lon
dtime<-seal$dtime
lc<-seal$lc

# filter by speed
mfilter<-vmask(lat,lon,dtime,2)

# plot unfiltered (grey) and filtered data (green)
plot(lon,lat,col="lightgrey",type="l",xlim=c(5,18), ylim=c(77.1,79.1),xlab="Longitude",ylab="Latitude")
lines(lon[which(mfilter=="not")],lat[which(mfilter=="not")],col="darkgreen")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{}
\keyword{}% __ONLY ONE__ keyword per line
