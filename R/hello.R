# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

library(leagueCR7)
library(tidyverse)
require(foreign)
require(nnet)


#' Title
#'
#' @param dataset Football leagues dataset: default of leagueCR7::leagueCR7
#' @param condition  The name of the league
#'
#' @return
#' @export
#'
#' @examples
trainCR7 <- function(dataset = leagueCR7, condition){
  leagueCR7 <- leagueCR7 |>
    dplyr::filter({{condition}})|>
    dplyr::select(-c(is_cup,league_name))
  leagueCR7$target <- as.factor(leagueCR7$target)
  leagueCR7$home_team_name <- as.factor(leagueCR7$home_team_name)
  levels(leagueCR7$target) <- c("Away","Draw","Home")
  train <- multinom(target ~., data = leagueCR7)
  train
}

