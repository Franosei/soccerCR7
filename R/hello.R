
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

library(leagueCR7)
library(tidyverse)
require(foreign)
require(nnet)


#' Footbal League Matches Prediction
#'
#' @param dataset Football leagues dataset: default of leagueCR7::leagueCR7
#' @param testdata  The new dataset to predict: default of leagueCR7::leagueCR7
#' @param league  The name of the league
#'
#' @return A predicted Probabilities of League Matches is save as result.xlxs
#' @export
#'
#' @examples trainCR7()
#' @examples trainCR7(leagueCR7, leagueCR7, league_name == "Eliteserien")
#' @examples trainCR7(leagueCR7, leagueCR7, league_name == "Ligue 1")



trainCR7 <- function(dataset = leagueCR7::leagueCR7,testdata = leagueCR7::leagueCR7, league = (league_name == "Bundesliga")){
    leagueCR7 <- leagueCR7::leagueCR7 |>
      dplyr::filter({{league}})|>
      dplyr::select(-c(is_cup,league_name))
    leagueCR7$target <- as.factor(leagueCR7$target)
    leagueCR7$home_team_name <- as.factor(leagueCR7$home_team_name)
    levels(leagueCR7$target) <- c("Away","Draw","Home")
    testdata <- testdata |>
      dplyr::filter({{league}})|>
      dplyr::select(-c(is_cup,league_name))
    testdata$target <- as.factor(testdata$target)
    testdata$home_team_name <- as.factor(testdata$home_team_name)
    levels(testdata$target) <- c("Away","Draw","Home")
    test <- nnet::multinom(target ~., data = testdata)
    pp <- round(predict(test, newdata = testdata, "probs"),2)
    write.table(pp, file = "result.txt", sep = "  ")
}

