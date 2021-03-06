\name{pbdb_subtaxa}
\alias{pbdb_subtaxa}
\title{pbdb_subtaxa}
\usage{
pbdb_subtaxa (data, do.plot, col)
}
\arguments{
  \item{data}{dataframe with our query to the paleoBD
  \code{\link{pbdb_occurrences}}}

  \item{do.plot}{by default this function make a plot to
  visualize the distribution of taxa. Set to FALSE to skip
  the plot.}

  \item{col}{set the colour of the histogram. skyblue2 by
  default.}
}
\value{
a plot and a dataframe with the number of subtaxa in the
data.
}
\description{
count the number of subtaxa within a given taxa. e.g.
number of species within a genus.
}
\examples{
\dontrun{
canidae_quat<-  pbdb_occurrences (limit="all",
base_name="Canidae",  interval="Quaternary",
show=c("coords", "phylo", "ident")
pbdb_subtaxa (canidae_quat)
}
}

