
<!-- README.md is generated from README.Rmd. Please edit that file -->

# discrtr

<!-- badges: start -->
<!-- badges: end -->

Package {discrtr} is a companion to the book Introduction to Discrete
Choice Analysis with R. It includes data sets and other supporting
materials used in the book.

## Installation

You can install the development version of discrtr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("paezha/discrtr")
```

## Example

One data set included in the package relates to commuting in a
university setting. Analysis of this data was reported by Whalen,
P'{a}ez, and Carrasco
[(2012)](https://doi.org/10.1016/j.jtrangeo.2013.06.008). The wide
version of the data table can be loaded as follows:

``` r
library(discrtr)
data("mc_commute_wide")
```

This is a quick summary of the travel time variables in the table:

``` r
library(dplyr)
mc_commute_wide %>% 
  dplyr::select(starts_with("time.")) %>%
  summary()
#>    time.Cycle        time.Walk        time.HSR         time.Car    
#>  Min.   : 0.3106   Min.   : 1.00   Min.   :  1.00   Min.   : 1.00  
#>  1st Qu.: 2.9141   1st Qu.:10.00   1st Qu.:  4.00   1st Qu.: 5.00  
#>  Median : 4.3711   Median :15.00   Median :  8.00   Median :10.00  
#>  Mean   : 5.4278   Mean   :16.09   Mean   : 16.82   Mean   :12.86  
#>  3rd Qu.: 6.2112   3rd Qu.:20.00   3rd Qu.: 20.00   3rd Qu.:20.00  
#>  Max.   :45.0000   Max.   :62.11   Max.   :120.00   Max.   :72.00  
#>  NA's   :997       NA's   :513     NA's   :54       NA's   :622
```

There are four modes of transportation in this data set, but not all
modes were available to every respondent, hence the NA’s. A missing
value for any of the time variables indicates that the mode was not part
of the choice set for the corresponding traveller.
