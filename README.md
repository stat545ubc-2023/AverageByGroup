
<!-- README.md is generated from README.Rmd. Please edit that file -->

# AverageByGroup

<!-- badges: start -->
<!-- badges: end -->

The goal of AverageByGroup is to take in a dataset, and produce a tibble
containing calculated averages of a numerical variable, grouped
according to a categorical variable. This package is dependent on the
tidyverse and dplyr packages.

## Installation

You can install the development version of AverageByGroup like so:

``` r
# install.packages("devtools")
devtools::install_github("https://github.com/stat545ubc-2023/AverageByGroup")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(AverageByGroup)
#Here using the iris dataset, I will find the average of the petal width for each species
average_by_group(iris, Species, Petal.Width)
#> # A tibble: 3 × 2
#>   Species    average_variable
#>   <fct>                 <dbl>
#> 1 setosa                0.246
#> 2 versicolor            1.33 
#> 3 virginica             2.03
#the same can be done for a different dataset and different variables
average_by_group(PlantGrowth, group, weight)
#> # A tibble: 3 × 2
#>   group average_variable
#>   <fct>            <dbl>
#> 1 ctrl              5.03
#> 2 trt1              4.66
#> 3 trt2              5.53
```
