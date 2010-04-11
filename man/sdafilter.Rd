\name{sdafilter}
\alias{sdafilter}
\title{Filter Argos locations}
\description{
This function filters location data obtained from Argos, using the Freitas et al. (2008) algorithm.
}
\usage{
sdafilter(lat, lon, dtime, lc, vmax = 2, ang = c(15, 25), distlim = c(2500, 5000))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{lat}{ a numeric vector of latitudes, in decimal degrees}
  \item{lon}{ a numeric vector of longitudes, in decimal degrees}
  \item{dtime}{ a vector of class POSIXct with date and time for each location}
  \item{lc}{ a numeric or character vector of Argos location classes. Argos locations Z can be entered as "Z", "z" or -9}
  \item{vmax}{ speed threshold, in m/s. Default is 2 m/s}
  \item{ang}{ angles of the spikes to be removed. Default is c(15,25). No spikes are removed if \code{ang}=-1}
  \item{distlim}{ lengths of the above spikes, in meters. Default is c(2500,5000)}
}
\details{
 Locations are filtered using the algorithm described in Freitas et al. (2008).
 The algorithm first removes all locations with location class Z (-9), which are
 the points for which the location process failed. Then all locations requiring
 unrealistic swimming speeds are removed, using the MacConnell et al. (1992) algorithm,
 unless the point is located at less than 5 km from the previous location. This procedure enables retaining
 good quality locations for which high swimming speeds result from location being taken
 very close to each other in time. The default maximum speed threshold is 2 m/s. 
 The last step is optional, and enables to remove
 unlikely spikes from the animal's path. The angles of the spikes should be specified
 in \code{ang}, and their respective length in \code{distlim}. The default
 is c(15,25) for \code{ang} and c(2500,5000) for \code{distlim}, meaning that all spikes
 with angles smaller than 15 and 25 degrees will be removed if their extension is higher than
 2500 m and 5000 m respectively. No spikes are removed if \code{ang}=-1. \code{ang}
 and \code{distlim} vectors must have the same length.
}
\value{
  Returns a vector with the following elements: \code{"removed"} (location removed by the filter),
  \code{"not"} (location not removed) and \code{"end_location"} (location at the end
  of the track where the algorithm could not be applied).
}
\references{
Freitas, C., Lydersen, C., Ims, R.A., Fedak, M.A. and Kovacs, K.M. (2008) A simple new 
algorithm to filter marine mammal Argos locations \emph{Marine Mammal Science} 24:315-325.

McConnell, B.J., Chambers, C. and Fedak, M.A. (1992) Foraging ecology of southern
elephant seals in relation to the bathymetry and productivity of the Southern Ocean.
\emph{Antarctic Science} 4:393-398.
}
\author{Carla Freitas, with contributions from Anne Goarant and Catriona MacLeod}

\seealso{\code{\link{vmask}}} 
\examples{
data(seal)
lat<-seal$lat
lon<-seal$lon
dtime<-seal$dtime
lc<-seal$lc

# plot unfiltered data
plot(lon,lat,col="lightgrey",type="l",xlim=c(5,18), ylim=c(77.1,79.1),xlab="Longitude",ylab="Latitude")

# filter by speed only
mfilter<-vmask(lat,lon,dtime,2)
mfilter[1:10]
lines(lon[which(mfilter=="not")],lat[which(mfilter=="not")],col="red")

# filter data using sdafilter
cfilter<-sdafilter(lat, lon, dtime, lc)
cfilter[1:20]
lines(lon[which(cfilter=="not")],lat[which(cfilter=="not")],col="blue")

# check number of locations (by location class) removed by each filter
table(lc,mfilter)
table(lc,cfilter)

}

\keyword{spatial}
