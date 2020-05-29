poly <-
  structure(
    '{"type":"FeatureCollection","features":[{"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[-7.1549869,45.4449053],[-7.6245498,37.9890775],[-7.5290969,38.0423402],[-3.3235845,40.588151],[-7.344442,37.6863061],[1.8042184,41.0097841],[3.7578538,38.7756389],[1.8629117,35.5400723],[-6.3787009,28.8026166],[-8.3144042,35.6271496],[-9.3413257,34.4122375],[-7.8818739,37.2784218],[-10.970619,35.0652943],[-7.855486,37.303094],[-17.6800154,33.0680873],[-11.4987062,37.7759151],[-16.8542278,41.7896373],[-9.6292336,41.0325088],[-8.3619054,39.5168442],[-8.1027301,39.7855456],[-7.1549869,45.4449053]]]},"properties":{}}]}',
    class = c("json", "geo_json")
  )

test_that("ms_simplify fails with invalid geo_json", {
  expect_error(ms_simplify('{foo: "bar"}'), "Input is not valid geojson")
})

test_that("ms_simplify fails correctly", {
  expect_error(ms_simplify(poly, keep = 0), "keep must be > 0 and <= 1")
  expect_error(ms_simplify(poly, keep = 1.01), "keep must be > 0 and <= 1")
  expect_error(ms_simplify(poly, method = "foo"), "method should be one of")
})
