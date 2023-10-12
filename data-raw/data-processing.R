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
### integer: id, year, year_founded, year_closed, countries_of_operation_count, staff, natl, intl
### factor: type, international_or_national, sector, religious_or_secular, red_cross_code_of_conduct_signatory, chs_member, interaction_member, icva_member
### char -> dbl: %_intl

### TODO:staff_, natl_, intl_imputed columns look super weird
### TODO: Money columns
glimpse(gdho_full)


gdho <- gdho_full[1:33]

## Read and write dictionary ---------------------------------------------------
dictionary <- read_excel("./data-raw/gdho_read_me.xlsx", skip = 2)

## ---------
usethis::use_data(data-processing, overwrite = TRUE)

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
