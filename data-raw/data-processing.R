## code to prepare `data-processing` dataset goes here
library(readr)
library(readxl)
library(dplyr)
library(stringr)
library(openxlsx)

## Read raw data ---------------------------------------------------------------
gdho_raw <- readr::read_csv("./data-raw/gdho.csv", skip = 1)

## Rename column names ---------------------------------------------------------
gdho_full <- gdho_raw |>
  dplyr::rename_all(~stringr::str_replace_all(.x, "[\\(\\)]", "")) |>
  dplyr::rename_all(~stringr::str_replace_all(.x, " ", "_")) |>
  dplyr::rename_all(tolower) #TODO: country names need more cleaning, remove ","

## Modify data types -----------------------------------------------------------
### to integer:
gdho_full <- gdho_full |>
  dplyr::mutate(dplyr::across(c("id", "year", "year_founded", "year_closed",
                         "countries_of_operation_count", "staff", "natl", "intl"),
                       as.integer)) |>
  dplyr::mutate(dplyr::across(`afghanistan`:`zimbabwe`, as.integer)) |>
### to factor:
  dplyr::mutate(dplyr::across(c("type", "international_or_national", "sector",
                         "religious_or_secular",
                         "red_cross_code_of_conduct_signatory",
                         "chs_member", "interaction_member", "icva_member"),
                       as.factor))
### change percent column to double
gdho_full <- gdho_full |>
  dplyr::rename(percent_intl = `%_intl`) |>
  dplyr::mutate(percent_intl = as.double(stringr::str_replace(percent_intl,
                                                              pattern = "%",
                                                              replacement = "")))

### Money columns remove dollar sign (described in dictionary file) and convert to double
gdho_full <- gdho_full |>
  dplyr::mutate(dplyr::across(c("ope_approx_usd", "ope/staff",
                                "ope_inflation_adjusted", "humexp_approx_usd",
                                "humexp_inflation_adjusted"),
                              ~ gsub("[$,]", "", .x))) |>
  dplyr::mutate(dplyr::across(c("ope_approx_usd", "ope/staff",
                                "ope_inflation_adjusted", "humexp_approx_usd",
                                "humexp_inflation_adjusted"), as.double))

### TODO: separate ope_original_currency into 2 columns
### TODO:staff_, natl_, intl_imputed do not indicate numbers but some categories which are not documented

## Encoding UTF-8 --------------------------------------------------------------
gdho_full <- gdho_full |>
  mutate(across(where(is.character), stringi::stri_enc_toutf8))

## Build dataset gdho ----------------------------------------------------------
gdho <- gdho_full[1:33] # a shorter version that does not include all country columns

## Read and write dictionary ---------------------------------------------------
original_dict <- read_excel("./data-raw/gdho_read_me.xlsx", skip = 2)
gdho_full_dictionary <- tibble(directory = "data",
       file_name = "gdho_full.rda",
       variable_name = c(colnames(gdho_full)[1:33], "countries"),
       variable_type =  c(sapply(gdho_full, typeof)[1:33], "integer"),
       description = original_dict$`Content description`)
gdho_dict <- tibble(directory = "data",
                    file_name = "gdho.rda",
                    variable_name = colnames(gdho_full)[1:33],
                    variable_type = sapply(gdho_full, typeof)[1:33],
                    description = original_dict$`Content description`[1:33])
dictionary <- rbind(gdho_full_dictionary, gdho_dict)
write_csv(dictionary, "./data-raw/dictionary.csv")

## Build R datasets ------------------------------------------------------------
usethis::use_data(gdho, overwrite = TRUE)
usethis::use_data(gdho_full, overwrite = TRUE)


## Export csv and xlsx data for website download -------------------------------
extdata_path <- "./inst/extdata/"
if (!dir.exists(extdata_path)) {
  dir.create(extdata_path, recursive = TRUE)
}
## CSV file
readr::write_csv(gdho, "./inst/extdata/gdho.csv")
readr::write_csv(gdho_full, "./inst/extdata/gdho_full.csv")
## XLSX file
openxlsx::write.xlsx(gdho, "./inst/extdata/gdho.xlsx")
openxlsx::write.xlsx(gdho_full, "./inst/extdata/gdho_full.xlsx")


