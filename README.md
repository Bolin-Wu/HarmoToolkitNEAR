
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

This is a basic example which shows you how to solve a common problem of
transforming sav files to csv files. Assume you have a bunch of `.sav`
files current working directory: “original_data/SNAC-K”. You may want to
transform them to `.csv` files so that they can be recognized by
Maelstrom harmonization package.

``` r
library(HarmoToolkitNEAR)
## basic example code
sav_to_csv("original_data", "SNAC-K")
```

After running this, there should be a new folder “csv_format” storing
the transformed SNAC-K csv files at “original_data/SNAC-K”.
