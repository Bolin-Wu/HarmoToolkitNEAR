
<!-- README.md is generated from README.Rmd. Please edit that file -->

# HarmoToolkitNEAR

<!-- badges: start -->
<!-- badges: end -->

During harmonization, there are many repetitive works.

The goal of creating this package is to practice the “don’t repeat
yourself” (DRY) principle and make the harmonization more handy.

## Installation

You can install the development version of HarmoToolkitNEAR from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Bolin-Wu/HarmoToolkitNEAR")
```

## Example

``` r
library(HarmoToolkitNEAR)
## check function documentation
?sav_to_csv
## code usage
sav_to_csv("original_data", "SNAC-K")
```
