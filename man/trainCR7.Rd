% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hello.R
\name{trainCR7}
\alias{trainCR7}
\title{Footbal League Matches Prediction}
\usage{
trainCR7(
  dataset = leagueCR7::leagueCR7,
  testdata = leagueCR7::leagueCR7,
  league = (league_name == "Bundesliga")
)
}
\arguments{
\item{dataset}{Football leagues dataset: default of leagueCR7::leagueCR7}

\item{testdata}{The new dataset to predict: default of leagueCR7::leagueCR7}

\item{league}{The name of the league}
}
\value{
A predicted Probabilities of League Matches is save as result.xlxs
}
\description{
Footbal League Matches Prediction
}
\examples{
trainCR7()
trainCR7(leagueCR7, leagueCR7, league_name == "Eliteserien")
trainCR7(leagueCR7, leagueCR7, league_name == "Ligue 1")
}
