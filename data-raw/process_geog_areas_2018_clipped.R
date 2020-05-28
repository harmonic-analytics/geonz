### Script to process geographical area files - clipped versions

# Read in geopackages -----------------------------------------------------

dir = './data-raw/geog-areas-2018-clipped'

sa1_geoms_2018_clipped = sf::st_read(file.path(dir, 'statistical-area-1-2018-clipped-generalised.gpkg'))
sa2_geoms_2018_clipped = sf::st_read(file.path(dir, 'statistical-area-2-2018-clipped-generalised.gpkg'))
ward_geoms_2018_clipped = sf::st_read(file.path(dir, 'ward-2018-clipped-generalised.gpkg'))
ta_geoms_2018_clipped = sf::st_read(file.path(dir, 'territorial-authority-2018-clipped-generalised.gpkg'))
rc_geoms_2018_clipped = sf::st_read(file.path(dir, 'regional-council-2018-clipped-generalised.gpkg'))

# Tidy and prepare geometry files -----------------------------------------

sa1_geoms_2018_clipped = sa1_geoms_2018_clipped %>%
  dplyr::select(name = SA12018_V1_00, geom)
sa1_geoms_2018_clipped$geom = sf::st_transform(sa1_geoms_2018_clipped$geom, '+proj=longlat +datum=WGS84') # Change to lat/lon for map plotting

sa2_geoms_2018_clipped = sa2_geoms_2018_clipped %>%
  dplyr::select(code = SA22018_V1_00, name = SA22018_V1_00_NAME, geom)
sa2_geoms_2018_clipped$geom = sf::st_transform(sa2_geoms_2018_clipped$geom, '+proj=longlat +datum=WGS84')

ward_geoms_2018_clipped = ward_geoms_2018_clipped %>%
  dplyr::select(code = WARD2018_V1_00, name = WARD2018_V1_00_NAME, geom)
ward_geoms_2018_clipped$geom = sf::st_transform(ward_geoms_2018_clipped$geom, '+proj=longlat +datum=WGS84')

ta_geoms_2018_clipped = ta_geoms_2018_clipped %>%
  dplyr::select(code = TA2018_V1_00, name = TA2018_V1_00_NAME, geom)
ta_geoms_2018_clipped$geom = sf::st_transform(ta_geoms_2018_clipped$geom, '+proj=longlat +datum=WGS84')

rc_geoms_2018_clipped = rc_geoms_2018_clipped %>%
  dplyr::select(code = REGC2018_V1_00, name = REGC2018_V1_00_NAME, geom)
rc_geoms_2018_clipped$geom = sf::st_transform(rc_geoms_2018_clipped$geom, '+proj=longlat +datum=WGS84')
