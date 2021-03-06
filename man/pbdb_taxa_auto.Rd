\name{pbdb_taxa_auto}
\alias{pbdb_taxa_auto}
\title{pbdb_taxa_auto}
\usage{
pbdb_taxa_auto (...)
}
\arguments{
  \item{...}{see all paramenters:
  http://paleobiodb.org/data1.1/taxa/auto_doc.html For
  example: \code{name} A partial name or prefix. It must
  have at least 3 significant characters, and may include
  both a genus (possibly abbreviated) and a species.
  \code{limit} set the limit to the number of matches}
}
\value{
a dataframe with information about the matches (taxon rank
and number of occurrences in the database)
}
\description{
Returns a list of names matching the given prefix or
partial name.
}
\examples{
\dontrun{
pbdb_taxa_auto (name="Cani", limit=10)
}
}

