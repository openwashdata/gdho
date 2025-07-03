test_that("gdho data loads correctly", {
  expect_s3_class(gdho, "data.frame")
  expect_equal(ncol(gdho), 35)
  expect_equal(nrow(gdho), 4548)
})

test_that("gdho_full data loads correctly", {
  expect_s3_class(gdho_full, "data.frame")
  expect_equal(ncol(gdho_full), 275)
  expect_equal(nrow(gdho_full), 4548)
})

test_that("data types are correct", {
  # Check integer columns
  expect_type(gdho$id, "integer")
  expect_type(gdho$year, "integer")
  expect_type(gdho$type, "integer")
  expect_type(gdho$international_or_national, "integer")
  
  # Check character columns
  expect_type(gdho$name, "character")
  expect_type(gdho$website, "character")
  
  # Check double columns
  expect_type(gdho$ope_approx_usd, "double")
  expect_type(gdho$percent_intl, "double")
})

test_that("no unexpected missing values in key columns", {
  expect_equal(sum(is.na(gdho$id)), 0)
  expect_equal(sum(is.na(gdho$name)), 0)
})

test_that("data exports exist", {
  expect_true(file.exists(system.file("extdata", "gdho.csv", package = "gdho")))
  expect_true(file.exists(system.file("extdata", "gdho.xlsx", package = "gdho")))
  expect_true(file.exists(system.file("extdata", "gdho_full.csv", package = "gdho")))
  expect_true(file.exists(system.file("extdata", "gdho_full.xlsx", package = "gdho")))
})