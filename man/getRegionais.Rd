% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility_tools.R
\name{getRegionais}
\alias{getRegionais}
\title{get list of regionais.}
\usage{
getRegionais(uf, sortedby = "a", datasource = con)
}
\arguments{
\item{uf}{full name of the state.}

\item{sortedby}{the options are: 'a' alphabetically, 'id' regional id number, if available}

\item{database}{name of the database}
}
\value{
vector with names of the regionais.
}
\description{
consult database to get list of regionais
}
\examples{
getRegionais(uf="Rio de Janeiro")
getRegionais(uf="Rio de Janeiro", sortedby = 'id')
}
