## code to prepare `data-processing` dataset goes here
library(readr)
library(readxl)
library(dplyr)
library(stringr)

## Read raw data ---------------------------------------------------------------
gdho_raw <- readr::read_csv("./data-raw/gdho.csv", skip = 1)

## Rename column names ---------------------------------------------------------
gdho_full <- gdho_raw |>
  dplyr::rename_all(~stringr::str_replace_all(.x, "[\\(\\)]", "")) |>
  dplyr::rename_all(~stringr::str_replace_all(.x, " ", "_")) |>
  dplyr::rename_all(~stringr::str_replace_all(.x, ",", "")) |>
  dplyr::rename_all(tolower)

## Encoding UTF-8 --------------------------------------------------------------
gdho_full <- gdho_full |>
  mutate(across(where(is.character), \(x) stringi::stri_enc_toutf8(x)))

## Remove duplicate rows -------------------------------------------------------
gdho_full <- gdho_full |>
  dplyr::distinct()

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

### Separate ope_original_currency into amount and currency columns
gdho_full <- gdho_full |>
  tidyr::separate(ope_original_currency, 
                  into = c("ope_original_amount", "ope_original_currency_code"),
                  sep = " ",
                  fill = "right",
                  remove = FALSE)

### Document imputed categories:
# staff_imputed, natl_imputed, intl_imputed categories:
# - "small" = estimated 1-50 staff
# - "medium" = estimated 51-250 staff  
# - "large" = estimated 251-1000 staff
# - "very large" = estimated 1000+ staff


## Build dataset gdho ----------------------------------------------------------
# Get column names before country columns start
non_country_cols <- names(gdho_full)[1:which(names(gdho_full) == "afghanistan") - 1]
gdho <- gdho_full |> 
  dplyr::select(all_of(non_country_cols))

## Read and write dictionary ---------------------------------------------------
original_dict <- read_excel("./data-raw/gdho_read_me.xlsx", skip = 2)

# Get descriptions for new columns
new_column_descriptions <- c(
  ope_original_amount = "Operational program expenditure amount in original currency",
  ope_original_currency_code = "Currency code for operational program expenditure"
)

# Build dictionary for gdho_full
gdho_full_vars <- names(gdho_full)
country_start <- which(gdho_full_vars == "afghanistan")
country_end <- which(gdho_full_vars == "zimbabwe")

# Create descriptions vector
descriptions_full <- c(
  original_dict$`Content description`[1:30],  # Original descriptions up to ope_original_currency
  new_column_descriptions["ope_original_amount"],
  new_column_descriptions["ope_original_currency_code"],
  original_dict$`Content description`[31:33],  # Remaining original descriptions
  rep("Country operational presence indicator", length(country_start:country_end))
)

gdho_full_dictionary <- tibble(
  directory = "data",
  file_name = "gdho_full.rda",
  variable_name = gdho_full_vars,
  variable_type = sapply(gdho_full, typeof),
  description = descriptions_full
)

# Build dictionary for gdho
gdho_vars <- names(gdho)
gdho_dict <- tibble(
  directory = "data",
  file_name = "gdho.rda",
  variable_name = gdho_vars,
  variable_type = sapply(gdho, typeof),
  description = descriptions_full[1:length(gdho_vars)]
)

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
writexl::write_xlsx(gdho, "./inst/extdata/gdho.xlsx")
writexl::write_xlsx(gdho_full, "./inst/extdata/gdho_full.xlsx")


