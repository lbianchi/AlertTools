% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adjust_incidence_functions.R
\name{delaycalc}
\alias{delaycalc}
\title{Organize delay data for analysis and produce a nice plot.}
\usage{
delaycalc(d, nt_year = "ano_notif", nt_week = "se_notif",
  dg_year = "ano_digit", dg_week = "se_digit", SE = "SE_notif",
  lastSE = NA, truncweeks = 25, verbose = TRUE)
}
\arguments{
\item{d}{dataset with case data containing at least three variables: the event week  (tini) and event registry (tfim). Only one city at a time.}

\item{nt_year}{variable indicating the event year}

\item{nt_week}{variable indicating the event week}

\item{dg_year}{variable indicating the event registry year}

\item{dg_week}{variable indicating the event registry week}

\item{SE}{variable indicating epidemiological week of reference}

\item{lastSE}{variable with final notification week to be considered. Format YYYYWW. If NA, uses 
max(100*d$dg_year+d$dg_week). Default=NA.}

\item{truncweeks}{Default is 25 weeks}

\item{plotar}{Default is TRUE}
}
\value{
list with d = data.frame with the epidemiological weeks; delay.tbl and delay.week 
are internal objects used for plotting. Author Leo Bastos
}
\description{
The second function to be used in the delay fitting process using inla. Calculates the number
of cases reported per week with a given delay. Also removes data with notification delay greater than truncdays.
}
\examples{
dados <- getdelaydata(cities=2305001, datasource=con)
res = delaycalc(dados)  
head(res$d)  # data
head(res$delay.tbl)  # running matrix
}
