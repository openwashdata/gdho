# gdho 0.0.2

* Organisation names are valid UTF-8. The raw CSV is Latin-1 encoded; `data-raw/data-processing.R` now reads it with that encoding, so 572 values of `name`, 7 of `abbreviated_name` and 1 of `website` in `gdho` and `gdho_full` show their accented letters correctly (for example "Ayuda en Acción", "Trócaire"). The CSV and XLSX exports are rebuilt (#9).
* Rebuilding the data from the processing script also restores the values of the category columns `type`, `international_or_national`, `sector` and `religious_or_secular`, which were missing in every row, and stores all eight category columns as factors, as the script intends (#9).
