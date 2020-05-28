test_that("simplify fails with invalid geo_json", {
  expect_error(simplify('{foo: "bar"}'), "Input is not valid geojson")
})
