
<!-- README.md is generated from README.Rmd. Please edit that file -->

# HarmoToolkitNEAR

<!-- badges: start -->
<!-- badges: end -->

The goal of `HarmoToolkitNEAR` is to reduce the repetitive work during
harmonization, especially for data cleaning and inspecting.

## Installation

You can install the development version of HarmoToolkitNEAR from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Bolin-Wu/HarmoToolkitNEAR")
```

## Example

This is a basic example which shows you how to solve a common problem of
transforming sav files to csv files:

``` r
library(HarmoToolkitNEAR)
## basic example code
sav_to_csv("original_data", "SNAC-K")
```

Please make sure that the folder `original_data` folder is in your
current working directory.
