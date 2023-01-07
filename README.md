
<!-- README.md is generated from README.Rmd. Please edit that file -->

# soccerCR7

<!-- badges: start -->
<!-- badges: end -->

The goal of soccerCR7 is to predict football league matches across the
world. The final prediction is the probability of Away team wining, Draw
match and Home team wining. The final resut is save as result.txt in
your working directory

## Installation

You can install the development version of soccerCR7 from GitHub

## Example

This is a basic example which shows you how to solve a common problem:

``` r
remotes::install_github("Franosei/Football_dataset_package/leagueCR7")
#> Skipping install of 'leagueCR7' from a github remote, the SHA1 (5a8e7b1a) has not changed since last install.
#>   Use `force = TRUE` to force installation
library(leagueCR7)
library(soccerCR7)
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
trainCR7(leagueCR7, leagueCR7, league_name == "Eliteserien")
#> # weights:  84 (54 variable)
#> initial  value 272.455848 
#> iter  10 value 216.486192
#> iter  20 value 198.464259
#> iter  30 value 196.696212
#> iter  40 value 196.568082
#> iter  50 value 196.529341
#> iter  60 value 196.505971
#> iter  70 value 196.504715
#> iter  70 value 196.504714
#> iter  70 value 196.504714
#> final  value 196.504714 
#> converged
```

``` r
trainCR7(leagueCR7, leagueCR7, league_name == "Ligue 1")
#> # weights:  318 (210 variable)
#> initial  value 1329.320869 
#> iter  10 value 1225.388887
#> iter  20 value 1114.506010
#> iter  30 value 1102.444851
#> iter  40 value 1100.534796
#> iter  50 value 1100.444479
#> iter  60 value 1100.423454
#> iter  70 value 1100.394272
#> iter  80 value 1100.391715
#> iter  90 value 1100.377724
#> iter 100 value 1100.374559
#> final  value 1100.374559 
#> stopped after 100 iterations
```
