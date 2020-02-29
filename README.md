
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Rcat

<!-- badges: start -->

<!-- badges: end -->

### Project Overview

`Rcat` is a package that provides a collection of convenient functions
for Exploratory Data Analysis (EDA). In the early stage of a data
science project, EDA is a crucial stage to perform an initial
investigation on the dataset and inspire valuable research questions.
This package simplifies the process of detecting and dealing with
missing and suspicious values, as well as finding the relevant features.

### Functions

The following 4 functions are included in our package.

1.  `misscat`: This function provides a summary of missing values in the
    dataset and drops rows or columns if the number of the missing
    values exceeds the input threshold.

2.  `suscat`: Datasets could include erroneous values such as outliers.
    This function detects suspected erroneous numeric data in
    user-chosen columns.

3.  `repwithna`: Datasets could include uninformative strings, such as
    strings with only punctuations or blank strings. This function
    replaces these strings with `NA` so they can be removed as missing
    values.

4.  `topcorr`: This function calculates the correlation between the
    columns and generates a list of top-correlated features in the
    dataset.

### How `Rcat` fit in the R ecosystem

There are several existing packages in R that implement similar
functionality. -
[SmartEDA](https://cran.r-project.org/web/packages/SmartEDA/index.html)  
This package generates descriptive statistics and visualisations for
data frames. A HTML EDA report is also avaliable. -
[DataExplorer](https://cran.r-project.org/web/packages/SmartEDA/index.html)  
This package can analyze and visualize each variable in a data frame. It
also includes common data processing methods for wrangling. -
[inspectdf](https://cran.r-project.org/web/packages/inspectdf/index.html)  
This package offers columnwise summary, comparison and visualisation of
data frames.

## Installation

You can install the released version of Rcat from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("Rcat")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-MDS/Rcat")
```
