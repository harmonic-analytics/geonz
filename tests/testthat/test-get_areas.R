context("Testing get_areas function")

test_that("area_type is provided", {
  expect_error(get_areas(area_type = NULL))
})

test_that("Invalid area types rejected", {
  expect_error(get_areas(area_type = 1234))
  expect_error(get_areas(area_type = "Not an Area Type"))
})

test_that("clipped parameter is TRUE or FALSE only", {
  expect_error(get_areas(area_type = "rc", clipped=NULL))
  expect_error(get_areas(area_type = "rc", clipped=1234))
  expect_error(get_areas(area_type = "rc", clipped="rc"))
})

test_that("get_areas returns valid sf dataframes", {
  expect_equal(class(get_areas(area_type="rc")), c("sf", "data.frame"))
})

test_that("get_areas returns all dataframes without loss of data", {
  expect_equal(nrow(get_areas(area_type = "rc", clipped = FALSE)), 17)
  expect_equal(nrow(get_areas(area_type = "ta", clipped = FALSE)), 68)
  expect_equal(nrow(get_areas(area_type = "ward", clipped = FALSE)), 245)
  expect_equal(nrow(get_areas(area_type = "sa2", clipped = FALSE)), 2253)
  expect_equal(nrow(get_areas(area_type = "sa1", clipped = FALSE)), 29889)

  expect_equal(nrow(get_areas(area_type = "rc", clipped = TRUE)), 17)
  expect_equal(nrow(get_areas(area_type = "ta", clipped = TRUE)), 68)
  expect_equal(nrow(get_areas(area_type = "ward", clipped = TRUE)), 245)
  expect_equal(nrow(get_areas(area_type = "sa2", clipped = TRUE)), 2171)
  expect_equal(nrow(get_areas(area_type = "sa1", clipped = TRUE)), 29688)
})

  # expect_equal(nrow(area_hierarchy_2018), 29889)
