#' Global Database of Humanitarian Organization (short version)
#'
#' This dataset collected by Humanitarian Outcomes provides insights about humanitarian
#' organizations, such as name, website, headquarter information, and etc. This short version
#' excludes the information about how many operational units a humanitarian organization has
#' in each country, where you can find it in data gdho_full.
#'
#' @format A tibble with 4548 rows and 35 variables
#'
#' \describe{
#'   \item{id}{A unique Id for each organisation}
#'   \item{year}{Latest year information is available for}
#'   \item{name}{Full organisation name}
#'   \item{abbreviated_name}{Organisation abbreviation or acronym}
#'   \item{type}{National NGO (NNGO), International NGO (INGO), UN, Red Cross/Crescent classification}
#'   \item{international_or_national}{Organisation’s reach}
#'   \item{website}{Organisation page url}
#'   \item{hq_location}{Country where HQ office is located}
#'   \item{year_founded}{Year of establishment}
#'   \item{year_closed}{Year closed or last year of visible activity}
#'   \item{countries_of_operation_count}{Number of countries operational in}
#'   \item{sector}{Children/youth, coordination, disabilities, education, environment, food security/agriculture, health, landmines, livelihoods, logistics/communications, nutrition, refugees, shelter, veterinary, water/sanitation, women}
#'   \item{religious_or_secular}{Organisations religious affiliation}
#'   \item{religion}{Specific religious affiliation (ex. Catholic, Islamic, Jewish)}
#'   \item{red_cross_code_of_conduct_signatory}{Signatory status of the organisation}
#'   \item{chs_member}{Signatory status to the Core Humanitarian Standard on Quality and Accountability }
#'   \item{interaction_member}{Membership status}
#'   \item{icva_member}{Membership status}
#'   \item{staff}{Actual number of total staff}
#'   \item{staff_imputed}{Imputed number of total staff}
#'   \item{natl}{Actual number of national staff}
#'   \item{natl_imputed}{Imputed number of national staff}
#'   \item{intl}{Actual number of international staff}
#'   \item{intl_imputed}{Imputed number of international staff}
#'   \item{percent_intl}{Percent of total staff that are international}
#'   \item{ope_approx_usd}{Actual approximate annual operational program expenditure in USD}
#'   \item{ope_imputed}{Imputed approximate annual operational program expenditure in USD}
#'   \item{ope/staff}{Percent of operational program expenditure per staff member}
#'   \item{ope_inflation_adjusted}{Operational program expenditure adjusted for inflation}
#'   \item{ope_original_currency}{Actual approximate operational program expenditure in original currency used by organisation}
#'   \item{ope_original_amount}{Operational program expenditure amount in original currency}
#'   \item{ope_original_currency_code}{Currency code for operational program expenditure}
#'   \item{humexp_approx_usd}{Approximate humanitarian expenditure in USD}
#'   \item{humexp_imputed}{Imputed approximate humanitarian expenditure in USD}
#'   \item{humexp_inflation_adjusted}{Approximate humanitarian expenditure adjusted for inflation}
#' }
#'
#' @source Humanitarian Outcomes <https://www.humanitarianoutcomes.org/projects/gdho>

"gdho"
