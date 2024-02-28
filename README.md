
<!-- README.md is generated from README.Rmd. Please edit that file -->

# gdho

<!-- badges: start -->

[![License: CC BY
4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

<!-- badges: end -->

The goal of `gdho` is to provide a detailed list of global humanitarian
organizations complied by [Humanitarian
Outcomes](https://www.humanitarianoutcomes.org/projects/gdho) which
contains basic information such as organization website and headquarter
location, as well as, operational information such as annual
expenditure. The original database is updated annually and this package
version uses data retrieved on September 20, 2023.

## Installation

You can install the development version of gdho from
[GitHub](https://github.com/gdho) with:

``` r
# install.packages("devtools")
devtools::install_github("openwashdata/gdho")
```

Alternatively, you can download the individual datasets as CSV or XLSX
file from the table below.

| dataset   | CSV                                                                                      | XLSX                                                                                       |
|:----------|:-----------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------|
| gdho_full | [Download CSV](https://github.com/openwashdata/gdho/raw/main/inst/extdata/gdho_full.csv) | [Download XLSX](https://github.com/openwashdata/gdho/raw/main/inst/extdata/gdho_full.xlsx) |
| gdho      | [Download CSV](https://github.com/openwashdata/gdho/raw/main/inst/extdata/gdho.csv)      | [Download XLSX](https://github.com/openwashdata/gdho/raw/main/inst/extdata/gdho.xlsx)      |

# Introduction

# Data

The package provides access to XX datasets …

``` r
library(gdho)
```

    The `gdho` data set has {ncol(gdho)} variables and {nrow(gdho)} observations. For an overview of the variable names, see the following table.  

``` r
gdho |>
  head() |>
  gt::gt()
```

<div id="mqfbhldnhm" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#mqfbhldnhm table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#mqfbhldnhm thead, #mqfbhldnhm tbody, #mqfbhldnhm tfoot, #mqfbhldnhm tr, #mqfbhldnhm td, #mqfbhldnhm th {
  border-style: none;
}
&#10;#mqfbhldnhm p {
  margin: 0;
  padding: 0;
}
&#10;#mqfbhldnhm .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#mqfbhldnhm .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#mqfbhldnhm .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#mqfbhldnhm .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#mqfbhldnhm .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#mqfbhldnhm .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#mqfbhldnhm .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#mqfbhldnhm .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#mqfbhldnhm .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#mqfbhldnhm .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#mqfbhldnhm .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#mqfbhldnhm .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#mqfbhldnhm .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#mqfbhldnhm .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#mqfbhldnhm .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#mqfbhldnhm .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#mqfbhldnhm .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#mqfbhldnhm .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#mqfbhldnhm .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#mqfbhldnhm .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#mqfbhldnhm .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#mqfbhldnhm .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#mqfbhldnhm .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#mqfbhldnhm .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#mqfbhldnhm .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#mqfbhldnhm .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#mqfbhldnhm .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#mqfbhldnhm .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#mqfbhldnhm .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#mqfbhldnhm .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#mqfbhldnhm .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#mqfbhldnhm .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#mqfbhldnhm .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#mqfbhldnhm .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#mqfbhldnhm .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#mqfbhldnhm .gt_left {
  text-align: left;
}
&#10;#mqfbhldnhm .gt_center {
  text-align: center;
}
&#10;#mqfbhldnhm .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#mqfbhldnhm .gt_font_normal {
  font-weight: normal;
}
&#10;#mqfbhldnhm .gt_font_bold {
  font-weight: bold;
}
&#10;#mqfbhldnhm .gt_font_italic {
  font-style: italic;
}
&#10;#mqfbhldnhm .gt_super {
  font-size: 65%;
}
&#10;#mqfbhldnhm .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#mqfbhldnhm .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#mqfbhldnhm .gt_indent_1 {
  text-indent: 5px;
}
&#10;#mqfbhldnhm .gt_indent_2 {
  text-indent: 10px;
}
&#10;#mqfbhldnhm .gt_indent_3 {
  text-indent: 15px;
}
&#10;#mqfbhldnhm .gt_indent_4 {
  text-indent: 20px;
}
&#10;#mqfbhldnhm .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    &#10;    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="id">id</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="year">year</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="name">name</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="abbreviated_name">abbreviated_name</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="type">type</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="international_or_national">international_or_national</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="website">website</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="hq_location">hq_location</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="year_founded">year_founded</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="year_closed">year_closed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="countries_of_operation_count">countries_of_operation_count</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="sector">sector</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="religious_or_secular">religious_or_secular</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="religion">religion</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="red_cross_code_of_conduct_signatory">red_cross_code_of_conduct_signatory</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="chs_member">chs_member</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="interaction_member">interaction_member</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="icva_member">icva_member</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="staff">staff</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="staff_imputed">staff_imputed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="natl">natl</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="natl_imputed">natl_imputed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="intl">intl</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="intl_imputed">intl_imputed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="percent_intl">percent_intl</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="ope_approx_usd">ope_approx_usd</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="ope_imputed">ope_imputed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="ope/staff">ope/staff</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="ope_inflation_adjusted">ope_inflation_adjusted</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="ope_original_currency">ope_original_currency</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="humexp_approx_usd">humexp_approx_usd</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="humexp_imputed">humexp_imputed</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="humexp_inflation_adjusted">humexp_inflation_adjusted</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="id" class="gt_row gt_right">5420</td>
<td headers="year" class="gt_row gt_right">2021</td>
<td headers="name" class="gt_row gt_left">Al Ta'alouf Charity</td>
<td headers="abbreviated_name" class="gt_row gt_left">Al Ta'alouf</td>
<td headers="type" class="gt_row gt_center">NNGO</td>
<td headers="international_or_national" class="gt_row gt_center">NA</td>
<td headers="website" class="gt_row gt_left">https://www.altaalouf.org</td>
<td headers="hq_location" class="gt_row gt_left">Syrian Arab Republic</td>
<td headers="year_founded" class="gt_row gt_right">NA</td>
<td headers="year_closed" class="gt_row gt_right">NA</td>
<td headers="countries_of_operation_count" class="gt_row gt_right">1</td>
<td headers="sector" class="gt_row gt_center">NA</td>
<td headers="religious_or_secular" class="gt_row gt_center">NA</td>
<td headers="religion" class="gt_row gt_left">NA</td>
<td headers="red_cross_code_of_conduct_signatory" class="gt_row gt_center">NA</td>
<td headers="chs_member" class="gt_row gt_center">NA</td>
<td headers="interaction_member" class="gt_row gt_center">NA</td>
<td headers="icva_member" class="gt_row gt_center">NA</td>
<td headers="staff" class="gt_row gt_right">890</td>
<td headers="staff_imputed" class="gt_row gt_left">A</td>
<td headers="natl" class="gt_row gt_right">890</td>
<td headers="natl_imputed" class="gt_row gt_left">A</td>
<td headers="intl" class="gt_row gt_right">NA</td>
<td headers="intl_imputed" class="gt_row gt_left">NA</td>
<td headers="percent_intl" class="gt_row gt_right">NA</td>
<td headers="ope_approx_usd" class="gt_row gt_right">13386794</td>
<td headers="ope_imputed" class="gt_row gt_left">A</td>
<td headers="ope/staff" class="gt_row gt_right">15041.34</td>
<td headers="ope_inflation_adjusted" class="gt_row gt_right">14437416</td>
<td headers="ope_original_currency" class="gt_row gt_left">NA</td>
<td headers="humexp_approx_usd" class="gt_row gt_right">12850182</td>
<td headers="humexp_imputed" class="gt_row gt_left">A</td>
<td headers="humexp_inflation_adjusted" class="gt_row gt_right">13858689</td></tr>
    <tr><td headers="id" class="gt_row gt_right">22</td>
<td headers="year" class="gt_row gt_right">2020</td>
<td headers="name" class="gt_row gt_left">Action Africa Help-International</td>
<td headers="abbreviated_name" class="gt_row gt_left">AAH-I</td>
<td headers="type" class="gt_row gt_center">INGO</td>
<td headers="international_or_national" class="gt_row gt_center">International</td>
<td headers="website" class="gt_row gt_left">http://www.actionafricahelp.org</td>
<td headers="hq_location" class="gt_row gt_left">Kenya</td>
<td headers="year_founded" class="gt_row gt_right">1987</td>
<td headers="year_closed" class="gt_row gt_right">NA</td>
<td headers="countries_of_operation_count" class="gt_row gt_right">4</td>
<td headers="sector" class="gt_row gt_center">NA</td>
<td headers="religious_or_secular" class="gt_row gt_center">Secular</td>
<td headers="religion" class="gt_row gt_left">NA</td>
<td headers="red_cross_code_of_conduct_signatory" class="gt_row gt_center">NA</td>
<td headers="chs_member" class="gt_row gt_center">NA</td>
<td headers="interaction_member" class="gt_row gt_center">NA</td>
<td headers="icva_member" class="gt_row gt_center">NA</td>
<td headers="staff" class="gt_row gt_right">NA</td>
<td headers="staff_imputed" class="gt_row gt_left">NA</td>
<td headers="natl" class="gt_row gt_right">NA</td>
<td headers="natl_imputed" class="gt_row gt_left">NA</td>
<td headers="intl" class="gt_row gt_right">NA</td>
<td headers="intl_imputed" class="gt_row gt_left">NA</td>
<td headers="percent_intl" class="gt_row gt_right">NA</td>
<td headers="ope_approx_usd" class="gt_row gt_right">14658708</td>
<td headers="ope_imputed" class="gt_row gt_left">A</td>
<td headers="ope/staff" class="gt_row gt_right">17682.40</td>
<td headers="ope_inflation_adjusted" class="gt_row gt_right">16578200</td>
<td headers="ope_original_currency" class="gt_row gt_left">NA</td>
<td headers="humexp_approx_usd" class="gt_row gt_right">12833628</td>
<td headers="humexp_imputed" class="gt_row gt_left">A</td>
<td headers="humexp_inflation_adjusted" class="gt_row gt_right">14514134</td></tr>
    <tr><td headers="id" class="gt_row gt_right">23</td>
<td headers="year" class="gt_row gt_right">2022</td>
<td headers="name" class="gt_row gt_left">Action Contre la Faim International (ACF/ACH/AAH)</td>
<td headers="abbreviated_name" class="gt_row gt_left">ACF</td>
<td headers="type" class="gt_row gt_center">INGO</td>
<td headers="international_or_national" class="gt_row gt_center">International</td>
<td headers="website" class="gt_row gt_left">http://www.actioncontrelafaim.org</td>
<td headers="hq_location" class="gt_row gt_left">France</td>
<td headers="year_founded" class="gt_row gt_right">1979</td>
<td headers="year_closed" class="gt_row gt_right">NA</td>
<td headers="countries_of_operation_count" class="gt_row gt_right">58</td>
<td headers="sector" class="gt_row gt_center">NA</td>
<td headers="religious_or_secular" class="gt_row gt_center">Secular</td>
<td headers="religion" class="gt_row gt_left">NA</td>
<td headers="red_cross_code_of_conduct_signatory" class="gt_row gt_center">1</td>
<td headers="chs_member" class="gt_row gt_center">1</td>
<td headers="interaction_member" class="gt_row gt_center">1</td>
<td headers="icva_member" class="gt_row gt_center">1</td>
<td headers="staff" class="gt_row gt_right">7912</td>
<td headers="staff_imputed" class="gt_row gt_left">A</td>
<td headers="natl" class="gt_row gt_right">NA</td>
<td headers="natl_imputed" class="gt_row gt_left">NA</td>
<td headers="intl" class="gt_row gt_right">NA</td>
<td headers="intl_imputed" class="gt_row gt_left">NA</td>
<td headers="percent_intl" class="gt_row gt_right">NA</td>
<td headers="ope_approx_usd" class="gt_row gt_right">526</td>
<td headers="ope_imputed" class="gt_row gt_left">A</td>
<td headers="ope/staff" class="gt_row gt_right">0.07</td>
<td headers="ope_inflation_adjusted" class="gt_row gt_right">526</td>
<td headers="ope_original_currency" class="gt_row gt_left">Euro 463128000</td>
<td headers="humexp_approx_usd" class="gt_row gt_right">NA</td>
<td headers="humexp_imputed" class="gt_row gt_left">NA</td>
<td headers="humexp_inflation_adjusted" class="gt_row gt_right">NA</td></tr>
    <tr><td headers="id" class="gt_row gt_right">32</td>
<td headers="year" class="gt_row gt_right">2022</td>
<td headers="name" class="gt_row gt_left">ActionAid International</td>
<td headers="abbreviated_name" class="gt_row gt_left">NA</td>
<td headers="type" class="gt_row gt_center">INGO</td>
<td headers="international_or_national" class="gt_row gt_center">International</td>
<td headers="website" class="gt_row gt_left">http://www.actionaid.org</td>
<td headers="hq_location" class="gt_row gt_left">South Africa</td>
<td headers="year_founded" class="gt_row gt_right">1972</td>
<td headers="year_closed" class="gt_row gt_right">NA</td>
<td headers="countries_of_operation_count" class="gt_row gt_right">45</td>
<td headers="sector" class="gt_row gt_center">NA</td>
<td headers="religious_or_secular" class="gt_row gt_center">Secular</td>
<td headers="religion" class="gt_row gt_left">NA</td>
<td headers="red_cross_code_of_conduct_signatory" class="gt_row gt_center">1</td>
<td headers="chs_member" class="gt_row gt_center">NA</td>
<td headers="interaction_member" class="gt_row gt_center">NA</td>
<td headers="icva_member" class="gt_row gt_center">NA</td>
<td headers="staff" class="gt_row gt_right">3249</td>
<td headers="staff_imputed" class="gt_row gt_left">A</td>
<td headers="natl" class="gt_row gt_right">NA</td>
<td headers="natl_imputed" class="gt_row gt_left">NA</td>
<td headers="intl" class="gt_row gt_right">NA</td>
<td headers="intl_imputed" class="gt_row gt_left">NA</td>
<td headers="percent_intl" class="gt_row gt_right">NA</td>
<td headers="ope_approx_usd" class="gt_row gt_right">188</td>
<td headers="ope_imputed" class="gt_row gt_left">A</td>
<td headers="ope/staff" class="gt_row gt_right">0.06</td>
<td headers="ope_inflation_adjusted" class="gt_row gt_right">188</td>
<td headers="ope_original_currency" class="gt_row gt_left">Euro 165240000</td>
<td headers="humexp_approx_usd" class="gt_row gt_right">NA</td>
<td headers="humexp_imputed" class="gt_row gt_left">NA</td>
<td headers="humexp_inflation_adjusted" class="gt_row gt_right">NA</td></tr>
    <tr><td headers="id" class="gt_row gt_right">40</td>
<td headers="year" class="gt_row gt_right">2021</td>
<td headers="name" class="gt_row gt_left">Adventist Development and Relief Agency</td>
<td headers="abbreviated_name" class="gt_row gt_left">ADRA</td>
<td headers="type" class="gt_row gt_center">INGO</td>
<td headers="international_or_national" class="gt_row gt_center">International</td>
<td headers="website" class="gt_row gt_left">http://www.adra.org/</td>
<td headers="hq_location" class="gt_row gt_left">United States</td>
<td headers="year_founded" class="gt_row gt_right">1956</td>
<td headers="year_closed" class="gt_row gt_right">NA</td>
<td headers="countries_of_operation_count" class="gt_row gt_right">74</td>
<td headers="sector" class="gt_row gt_center">NA</td>
<td headers="religious_or_secular" class="gt_row gt_center">Religious</td>
<td headers="religion" class="gt_row gt_left">Christian</td>
<td headers="red_cross_code_of_conduct_signatory" class="gt_row gt_center">1</td>
<td headers="chs_member" class="gt_row gt_center">NA</td>
<td headers="interaction_member" class="gt_row gt_center">NA</td>
<td headers="icva_member" class="gt_row gt_center">NA</td>
<td headers="staff" class="gt_row gt_right">NA</td>
<td headers="staff_imputed" class="gt_row gt_left">NA</td>
<td headers="natl" class="gt_row gt_right">NA</td>
<td headers="natl_imputed" class="gt_row gt_left">NA</td>
<td headers="intl" class="gt_row gt_right">NA</td>
<td headers="intl_imputed" class="gt_row gt_left">NA</td>
<td headers="percent_intl" class="gt_row gt_right">NA</td>
<td headers="ope_approx_usd" class="gt_row gt_right">254598415</td>
<td headers="ope_imputed" class="gt_row gt_left">A</td>
<td headers="ope/staff" class="gt_row gt_right">89647.33</td>
<td headers="ope_inflation_adjusted" class="gt_row gt_right">274579794</td>
<td headers="ope_original_currency" class="gt_row gt_left">NA</td>
<td headers="humexp_approx_usd" class="gt_row gt_right">77966928</td>
<td headers="humexp_imputed" class="gt_row gt_left">A</td>
<td headers="humexp_inflation_adjusted" class="gt_row gt_right">84085924</td></tr>
    <tr><td headers="id" class="gt_row gt_right">46</td>
<td headers="year" class="gt_row gt_right">2021</td>
<td headers="name" class="gt_row gt_left">Afghanaid</td>
<td headers="abbreviated_name" class="gt_row gt_left">A-Aid</td>
<td headers="type" class="gt_row gt_center">INGO</td>
<td headers="international_or_national" class="gt_row gt_center">International</td>
<td headers="website" class="gt_row gt_left">http://www.afghanaid.org.uk</td>
<td headers="hq_location" class="gt_row gt_left">United Kingdom</td>
<td headers="year_founded" class="gt_row gt_right">1983</td>
<td headers="year_closed" class="gt_row gt_right">NA</td>
<td headers="countries_of_operation_count" class="gt_row gt_right">2</td>
<td headers="sector" class="gt_row gt_center">NA</td>
<td headers="religious_or_secular" class="gt_row gt_center">Secular</td>
<td headers="religion" class="gt_row gt_left">NA</td>
<td headers="red_cross_code_of_conduct_signatory" class="gt_row gt_center">1</td>
<td headers="chs_member" class="gt_row gt_center">NA</td>
<td headers="interaction_member" class="gt_row gt_center">NA</td>
<td headers="icva_member" class="gt_row gt_center">NA</td>
<td headers="staff" class="gt_row gt_right">NA</td>
<td headers="staff_imputed" class="gt_row gt_left">NA</td>
<td headers="natl" class="gt_row gt_right">NA</td>
<td headers="natl_imputed" class="gt_row gt_left">NA</td>
<td headers="intl" class="gt_row gt_right">NA</td>
<td headers="intl_imputed" class="gt_row gt_left">NA</td>
<td headers="percent_intl" class="gt_row gt_right">NA</td>
<td headers="ope_approx_usd" class="gt_row gt_right">14357419</td>
<td headers="ope_imputed" class="gt_row gt_left">A</td>
<td headers="ope/staff" class="gt_row gt_right">12627.46</td>
<td headers="ope_inflation_adjusted" class="gt_row gt_right">15484217</td>
<td headers="ope_original_currency" class="gt_row gt_left">GBP 10480916</td>
<td headers="humexp_approx_usd" class="gt_row gt_right">NA</td>
<td headers="humexp_imputed" class="gt_row gt_left">NA</td>
<td headers="humexp_inflation_adjusted" class="gt_row gt_right">NA</td></tr>
  </tbody>
  &#10;  
</table>
</div>

For an overview of the variable names, see the following table.

    #> Rows: 67 Columns: 5
    #> ── Column specification ────────────────────────────────────────────────────────
    #> Delimiter: ","
    #> chr (5): directory, file_name, variable_name, variable_type, description
    #> 
    #> ℹ Use `spec()` to retrieve the full column specification for this data.
    #> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

<div style="border: 1px solid #ddd; padding: 0px; overflow-y: scroll; height:400px; ">

<table class="table" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
variable_name
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
variable_type
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
description
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
id
</td>
<td style="text-align:left;">
integer
</td>
<td style="text-align:left;">
A unique Id for each organisation
</td>
</tr>
<tr>
<td style="text-align:left;">
year
</td>
<td style="text-align:left;">
integer
</td>
<td style="text-align:left;">
Latest year information is available for
</td>
</tr>
<tr>
<td style="text-align:left;">
name
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Full organisation name
</td>
</tr>
<tr>
<td style="text-align:left;">
abbreviated_name
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Organisation abbreviation or acronym
</td>
</tr>
<tr>
<td style="text-align:left;">
type
</td>
<td style="text-align:left;">
integer
</td>
<td style="text-align:left;">
National NGO (NNGO), International NGO (INGO), UN, Red Cross/Crescent
classification
</td>
</tr>
<tr>
<td style="text-align:left;">
international_or_national
</td>
<td style="text-align:left;">
integer
</td>
<td style="text-align:left;">
Organisation’s reach
</td>
</tr>
<tr>
<td style="text-align:left;">
website
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Organisation page url
</td>
</tr>
<tr>
<td style="text-align:left;">
hq_location
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Country where HQ office is located
</td>
</tr>
<tr>
<td style="text-align:left;">
year_founded
</td>
<td style="text-align:left;">
integer
</td>
<td style="text-align:left;">
Year of establishment
</td>
</tr>
<tr>
<td style="text-align:left;">
year_closed
</td>
<td style="text-align:left;">
integer
</td>
<td style="text-align:left;">
Year closed or last year of visible activity
</td>
</tr>
<tr>
<td style="text-align:left;">
countries_of_operation_count
</td>
<td style="text-align:left;">
integer
</td>
<td style="text-align:left;">
Number of countries operational in
</td>
</tr>
<tr>
<td style="text-align:left;">
sector
</td>
<td style="text-align:left;">
integer
</td>
<td style="text-align:left;">
Children/youth, coordination, disabilities, education, environment, food
security/agriculture, health, landmines, livelihoods,
logistics/communications, nutrition, refugees, shelter, veterinary,
water/sanitation, women
</td>
</tr>
<tr>
<td style="text-align:left;">
religious_or_secular
</td>
<td style="text-align:left;">
integer
</td>
<td style="text-align:left;">
Organisations religious affiliation
</td>
</tr>
<tr>
<td style="text-align:left;">
religion
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Specific religious affiliation (ex. Catholic, Islamic, Jewish)
</td>
</tr>
<tr>
<td style="text-align:left;">
red_cross_code_of_conduct_signatory
</td>
<td style="text-align:left;">
integer
</td>
<td style="text-align:left;">
Signatory status of the organisation
</td>
</tr>
<tr>
<td style="text-align:left;">
chs_member
</td>
<td style="text-align:left;">
integer
</td>
<td style="text-align:left;">
Signatory status to the Core Humanitarian Standard on Quality and
Accountability 
</td>
</tr>
<tr>
<td style="text-align:left;">
interaction_member
</td>
<td style="text-align:left;">
integer
</td>
<td style="text-align:left;">
Membership status
</td>
</tr>
<tr>
<td style="text-align:left;">
icva_member
</td>
<td style="text-align:left;">
integer
</td>
<td style="text-align:left;">
Membership status
</td>
</tr>
<tr>
<td style="text-align:left;">
staff
</td>
<td style="text-align:left;">
integer
</td>
<td style="text-align:left;">
Actual number of total staff
</td>
</tr>
<tr>
<td style="text-align:left;">
staff_imputed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Imputed number of total staff
</td>
</tr>
<tr>
<td style="text-align:left;">
natl
</td>
<td style="text-align:left;">
integer
</td>
<td style="text-align:left;">
Actual number of national staff
</td>
</tr>
<tr>
<td style="text-align:left;">
natl_imputed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Imputed number of national staff
</td>
</tr>
<tr>
<td style="text-align:left;">
intl
</td>
<td style="text-align:left;">
integer
</td>
<td style="text-align:left;">
Actual number of international staff
</td>
</tr>
<tr>
<td style="text-align:left;">
intl_imputed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Imputed number of international staff
</td>
</tr>
<tr>
<td style="text-align:left;">
percent_intl
</td>
<td style="text-align:left;">
double
</td>
<td style="text-align:left;">
Percent of total staff that are international
</td>
</tr>
<tr>
<td style="text-align:left;">
ope_approx_usd
</td>
<td style="text-align:left;">
double
</td>
<td style="text-align:left;">
Actual approximate annual operational program expenditure in USD
</td>
</tr>
<tr>
<td style="text-align:left;">
ope_imputed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Imputed approximate annual operational program expenditure in USD
</td>
</tr>
<tr>
<td style="text-align:left;">
ope/staff
</td>
<td style="text-align:left;">
double
</td>
<td style="text-align:left;">
Percent of operational program expenditure per staff member
</td>
</tr>
<tr>
<td style="text-align:left;">
ope_inflation_adjusted
</td>
<td style="text-align:left;">
double
</td>
<td style="text-align:left;">
Operational program expenditure adjusted for inflation
</td>
</tr>
<tr>
<td style="text-align:left;">
ope_original_currency
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Actual approximate operational program expenditure in original currency
used by organisation
</td>
</tr>
<tr>
<td style="text-align:left;">
humexp_approx_usd
</td>
<td style="text-align:left;">
double
</td>
<td style="text-align:left;">
Approximate humanitarian expenditure in USD
</td>
</tr>
<tr>
<td style="text-align:left;">
humexp_imputed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Imputed approximate humanitarian expenditure in USD
</td>
</tr>
<tr>
<td style="text-align:left;">
humexp_inflation_adjusted
</td>
<td style="text-align:left;">
double
</td>
<td style="text-align:left;">
Approximate humanitarian expenditure adjusted for inflation
</td>
</tr>
</tbody>
</table>

</div>

## Example

Write a demo snippet here.

# License

Data are available as
[CC-BY](https://github.com/openwashdata/gdho/blob/main/LICENSE.md).

# Citation

``` r
citation("gdho")
#> To cite package 'gdho' in publications use:
#> 
#>   Zhong M (2024). _gdho: Global Database of Humanitarian
#>   Organizations_. R package version 0.0.0.9000.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {gdho: Global Database of Humanitarian Organizations},
#>     author = {Mian Zhong},
#>     year = {2024},
#>     note = {R package version 0.0.0.9000},
#>   }
```

## Related References
