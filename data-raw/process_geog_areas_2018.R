### Script to process geographical area files

# Read in geopackages -----------------------------------------------------

dir = './data-raw/geog-areas-2018'

sa1_geoms_2018 = sf::st_read(file.path(dir, 'statistical-area-1-higher-geographies-2018-generalised.gpkg'))
sa2_geoms_2018 = sf::st_read(file.path(dir, 'statistical-area-2-2018-generalised.gpkg'))
ward_geoms_2018 = sf::st_read(file.path(dir, 'ward-2018-generalised.gpkg'))
ta_geoms_2018 = sf::st_read(file.path(dir, 'territorial-authority-2018-generalised.gpkg'))
rc_geoms_2018 = sf::st_read(file.path(dir, 'regional-council-2018-generalised.gpkg'))


# Extract Area Hierarchy --------------------------------------------------

area_hierarchy_2018 <- sa1_geoms_2018  %>%
  dplyr::select(
    SA1_2018_NAME = SA12018_V1_00,
    SA2_2018_CODE = SA22018_V1_00,
    SA2_2018_NAME = SA22018_V1_00_NAME,
    TA_2018_CODE = TA2018_V1_00,
    TA_2018_NAME = TA2018_V1_00_NAME,
    RC_2018_CODE = REGC2018_V1_00,
    RC_2018_NAME = REGC2018_V1_00_NAME,
    LANDWATER_NAME
  ) %>%
  sf::st_drop_geometry()


# Tidy and prepare geometry files -----------------------------------------

sa1_geoms_2018 = sa1_geoms_2018 %>%
  dplyr::select(name = SA12018_V1_00, geom)
sa1_geoms_2018$geom = sf::st_transform(sa1_geoms_2018$geom, '+proj=longlat +datum=WGS84') # Change to lat/lon for map plotting

sa2_geoms_2018 = sa2_geoms_2018 %>%
  dplyr::select(code = SA22018_V1_00, name = SA22018_V1_NAME, geom)
sa2_geoms_2018$geom = sf::st_transform(sa2_geoms_2018$geom, '+proj=longlat +datum=WGS84')

ward_geoms_2018 = ward_geoms_2018 %>%
  dplyr::select(code = WARD2018_V1_00, name = WARD2018_V1_00_NAME, geom)
ward_geoms_2018$geom = sf::st_transform(ward_geoms_2018$geom, '+proj=longlat +datum=WGS84')

ta_geoms_2018 = ta_geoms_2018 %>%
  dplyr::select(code = TA2018_V1_00, name = TA2018_V1_00_NAME, geom)
ta_geoms_2018$geom = sf::st_transform(ta_geoms_2018$geom, '+proj=longlat +datum=WGS84')

rc_geoms_2018 = rc_geoms_2018 %>%
  dplyr::select(code = REGC2018_V1_00, name = REGC2018_V1_00_NAME, geom)
rc_geoms_2018$geom = sf::st_transform(rc_geoms_2018$geom, '+proj=longlat +datum=WGS84')
