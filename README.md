
<!-- README.md is generated from README.Rmd. Please edit that file -->

# gdho

<!-- badges: start -->

[![License: CC BY
4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

<!-- badges: end -->

The goal of `gdho` is to

## Installation

You can install the development version of gdho from
[GitHub](https://github.com/gdho) with:

``` r
# install.packages("devtools")
devtools::install_github("openwashdata/gdho")
```

Alternatively, you can download the individual datasets as CSV or XLSX
file from the table below.

| dataset  | CSV              | XLSX              |
|----------|------------------|-------------------|
| dataname | [Download CSV]() | [Download XLSX]() |

# Introduction

# Data

The package provides access to XX datasets …

``` r
library(gdho)
```

    The `gdho` data set has {ncol(gdho)} variables and {nrow(gdho)} observations. For an overview of the variable names, see the following table.  

``` r
gdho
```

    #> Rows: 0 Columns: 5
    #> ── Column specification ────────────────────────────────────────────────────────
    #> Delimiter: ","
    #> chr (5): directory, file_name, variable_name, variable_type, description
    #> 
    #> ℹ Use `spec()` to retrieve the full column specification for this data.
    #> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

| variable_name | variable_type | description |
|:--------------|:--------------|:------------|

## Example

Write a demo snippet here.

# License

Data are available as
[CC-BY](https://github.com/openwashdata/gdho/blob/main/LICENSE.md).

# Citation

``` r
citation()
#> To cite R in publications use:
#> 
#>   R Core Team (2023). _R: A Language and Environment for Statistical
#>   Computing_. R Foundation for Statistical Computing, Vienna, Austria.
#>   <https://www.R-project.org/>.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {R: A Language and Environment for Statistical Computing},
#>     author = {{R Core Team}},
#>     organization = {R Foundation for Statistical Computing},
#>     address = {Vienna, Austria},
#>     year = {2023},
#>     url = {https://www.R-project.org/},
#>   }
#> 
#> We have invested a lot of time and effort in creating R, please cite it
#> when using it for data analysis. See also 'citation("pkgname")' for
#> citing R packages.
```

## Related References
