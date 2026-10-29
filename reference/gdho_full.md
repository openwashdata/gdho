# Global Database of Humanitarian Organization (full version)

This dataset collected by Humanitarian Outcomes provides insights about
humanitarian organizations, such as name, website, headquarter
information, and etc. This full version includes the information about
how many operational units a humanitarian organization has in each
country, which is represented as one column per country resulting in 275
variables compared with the short version "gdho" (35 variables).

## Usage

``` r
gdho_full
```

## Format

A tibble with 4548 rows and 275 variables

- id:

  A unique Id for each organisation

- year:

  Latest year information is available for

- name:

  Full organisation name

- abbreviated_name:

  Organisation abbreviation or acronym

- type:

  National NGO (NNGO), International NGO (INGO), UN, Red Cross/Crescent
  classification

- international_or_national:

  Organisation’s reach

- website:

  Organisation page url

- hq_location:

  Country where HQ office is located

- year_founded:

  Year of establishment

- year_closed:

  Year closed or last year of visible activity

- countries_of_operation_count:

  Number of countries operational in

- sector:

  Children/youth, coordination, disabilities, education, environment,
  food security/agriculture, health, landmines, livelihoods,
  logistics/communications, nutrition, refugees, shelter, veterinary,
  water/sanitation, women

- religious_or_secular:

  Organisations religious affiliation

- religion:

  Specific religious affiliation (ex. Catholic, Islamic, Jewish)

- red_cross_code_of_conduct_signatory:

  Signatory status of the organisation

- chs_member:

  Signatory status to the Core Humanitarian Standard on Quality and
  Accountability 

- interaction_member:

  Membership status

- icva_member:

  Membership status

- staff:

  Actual number of total staff

- staff_imputed:

  Imputed number of total staff

- natl:

  Actual number of national staff

- natl_imputed:

  Imputed number of national staff

- intl:

  Actual number of international staff

- intl_imputed:

  Imputed number of international staff

- percent_intl:

  Percent of total staff that are international

- ope_approx_usd:

  Actual approximate annual operational program expenditure in USD

- ope_imputed:

  Imputed approximate annual operational program expenditure in USD

- ope/staff:

  Percent of operational program expenditure per staff member

- ope_inflation_adjusted:

  Operational program expenditure adjusted for inflation

- ope_original_currency:

  Actual approximate operational program expenditure in original
  currency used by organisation

- ope_original_amount:

  Operational program expenditure amount in original currency

- ope_original_currency_code:

  Currency code for operational program expenditure

- humexp_approx_usd:

  Approximate humanitarian expenditure in USD

- humexp_imputed:

  Imputed approximate humanitarian expenditure in USD

- humexp_inflation_adjusted:

  Approximate humanitarian expenditure adjusted for inflation

- afghanistan..zimbabwe:

  240 columns representing operational presence in individual countries

## Source

Humanitarian Outcomes
<https://www.humanitarianoutcomes.org/projects/gdho>
