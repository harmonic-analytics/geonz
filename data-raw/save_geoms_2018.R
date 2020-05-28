# Process all the data

# Process geog areas

source('./data-raw/process_geog_areas_2018.R')

# Process clipped geog areas

source('./data-raw/process_geog_areas_2018_clipped.R')

# Export data

# Area hierachy for external use
usethis::use_data(area_hierarchy_2018, overwrite = TRUE)

# Geographies for reference to internal function
usethis::use_data(
  sa1_geoms_2018,
  sa2_geoms_2018,
  ward_geoms_2018,
  ta_geoms_2018,
  rc_geoms_2018,
  sa1_geoms_2018_clipped,
  sa2_geoms_2018_clipped,
  ward_geoms_2018_clipped,
  ta_geoms_2018_clipped,
  rc_geoms_2018_clipped,
  overwrite = TRUE
)
