\name{pbdb_map_occur}
\alias{pbdb_map_occur}
\title{pbdb_map_occur}
\usage{
pbdb_map_occur (data, res=5, col.int="white", col.ocean="black",
col.eff=c("light blue","blue"), do.plot=TRUE, ...)
}
\arguments{
  \item{data}{Input dataframe. This dataframe is the output
  of \code{\link{pbdb_occurrences}} function using the
  argument: \code{show="coords"}. See too: \strong{Details}
  and \strong{Examples}}

  \item{res}{the resolution of the RasterLayer object (in
  decimal degrees). See: \code{\link{raster}}}

  \item{col.int}{The colour of the mainland}

  \item{col.ocean}{The colour of the ocean}

  \item{col.eff}{Two or more colours. To generate the
  colour gradient used to show the number of occurrences
  per cell in map}

  \item{do.plot}{Logical; \code{TRUE} the function returns
  a RasterLayer and a plot.}

  \item{...}{Others parameters. See \code{\link{par}} and
  \code{\link{map}}}
}
\value{
A RasterLayer object and a plot with the sampling effort
(number of fossil records per cell). This RasterLayer
object have the resolution controlled by the argument
\code{res}. The deflaut is \code{res=1}.
}
\description{
Creates a RasterLayer object and a plot of the sampling
effort (number of fossil records per cell).
}
\details{
\strong{CAUTION!} The argument \code{show = "coords"} in
\code{\link{pbdb_occurrences}} function is required. We
recommend the use of a cairo device (\code{\link{X11}}) for
better visualization of the graphs. See \strong{Examples}
}
\examples{
\dontrun{
library(maps);library(raster)
X11(width=13, height=7.8)
data<- pbdb_occurrences (limit="all", vocab= "pbdb", base_name="Canis",
show="coords")
pbdb_map_occur (data,res=2)
pbdb_map_occur (data,res=2,do.plot=F)
}
}
\seealso{
See \code{\link{pbdb_occurrences}}, \code{\link{map}},
\code{\link{par}} and \code{\link{colors}} help pages
}

