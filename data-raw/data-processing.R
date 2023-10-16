## code to prepare `data-processing` dataset goes here
library(readr)
library(readxl)
library(dplyr)

## Read raw data ---------------------------------------------------------------
gdho_raw <- readr::read_csv("./data-raw/gdho.csv", skip = 1)

## Rename column names ---------------------------------------------------------
gdho_full <- gdho_raw |>
  dplyr::rename_all(~stringr::str_replace_all(.x, "[\\(\\)]", "")) |>
  dplyr::rename_all(~stringr::str_replace_all(.x, " ", "_")) |>
  dplyr::rename_all(tolower) #TODO: country names need more cleaning, remove ","

## Modify data types
### integer:
gdho_full <- gdho_full |>
  dplyr::mutate(across(c("id", "year", "year_founded", "year_closed",
                         "countries_of_operation_count", "staff", "natl", "intl"),
                       as.integer)) |>
### factor:
  dplyr::mutate(across(c("type", "international_or_national", "sector",
                         "religious_or_secular", "red_cross_code_of_conduct_signatory",
                         "chs_member", "interaction_member", "icva_member"),
                       as.factor))
### char -> dbl: %_intl
  dplyr::mutate(across(c()))
### TODO:staff_, natl_, intl_imputed columns look super weird
### TODO: Money columns remove dollar sign (described in dictionary file) and convert to double
gdho_full <- gdho_full |>
  dplyr::mutate(across(c("ope_approx_usd", "ope/staff", "ope_inflation_adjusted",
                         "humexp_approx_usd", "humexp_inflation_adjusted"), ~ gsub("[$,]", "", .x))) |>
  dplyr::mutate(across(c("ope_approx_usd", "ope/staff", "ope_inflation_adjusted",
                         "humexp_approx_usd", "humexp_inflation_adjusted"), as.double))


glimpse(gdho_full)


gdho <- gdho_full[1:33] # a shorter version that does not include all country columns

## Read and write dictionary ---------------------------------------------------
original_dict <- read_excel("./data-raw/gdho_read_me.xlsx", skip = 2)
dictionary <- tibble(directory = "data",
       file_name = "gdho_full.rda",
       variable_name = c(colnames(gdho_full)[1:33], "countries"),
       variable_type =  c(sapply(gdho_full, typeof)[1:33], "integer"),
       description = original_dict$`Content description`)


## ---------
usethis::use_data(gdho, overwrite = TRUE)
usethis::use_data(gdho_full, overwrite = TRUE)

library(leaflet)
library(leaflet.extras)
# Create a map
m <- leaflet() %>%
  addTiles()

# Define the starting and ending coordinates
start_coords <- c(40.7128, -74.0060) # New York City
end_coords <- c(34.0522, -118.2437) # Los Angeles

# Create a curved arc connecting the two locations
arc <- addPolylines(
  m,
  lng = c(-74.0060, -118.2437),
  lat = c(40.7128, 34.0522),
  color = "blue"
)

# Display the map with the arc
arc
