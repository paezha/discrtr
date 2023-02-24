
<!-- README.md is generated from README.Rmd. Please edit that file -->

# discrtr

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/discrtr)](https://CRAN.R-project.org/package=discrtr)

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-green.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)

[![GitHub
Stars](https://img.shields.io/github/stars/paezha/discrtr?style=social)](https://github.com/paezha/discrtr/stargazers)

![GitHub search hit counter:
R](https://img.shields.io/github/search/paezha/discrtr/R)  
![GitHub search hit counter:
data](https://img.shields.io/github/search/paezha/discrtr/data)

![GitHub issues](https://img.shields.io/github/issues/paezha/discrtr)
![GitHub
release](https://img.shields.io/github/release-date/paezha/discrtr)
![GitHub commit
activity](https://img.shields.io/github/commit-activity/y/paezha/discrtr)
![GitHub last
commit](https://img.shields.io/github/last-commit/paezha/discrtr)
[![](https://cranlogs.r-pkg.org/badges/discrtr)](https://cran.r-project.org/package=discrtr)
<!-- badges: end -->

Package {discrtr} is a companion to the book [Discrete Choice Analysis
with R](https://link.springer.com/book/10.1007/978-3-031-20719-8). It
includes templates with code and data sets used in the book.

## Installation

Install the released version of usethis from CRAN:

``` r
install.packages("discrtr")
```

Or you can install the development version of discrtr from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("paezha/discrtr")
```

## Example

One data set included in the package relates to commuting in a
university setting. Analysis of this data was reported by Whalen, Páez,
and Carrasco [(2012)](https://doi.org/10.1016/j.jtrangeo.2013.06.008).
The wide version of the data table can be loaded as follows:

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
