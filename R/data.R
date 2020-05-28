#' Boundaries for Statistical Area 1 2018
#'
#' A dataset that classifies statistical areas 1s into larger geographic areas,
#' such as statistical area 2s, territorial authorities, and regional councils.
#'
#' @format A data frame with 29889 rows and 8 variables:
#' \describe{
#'   \item{SA1_2018_NAME}{Name of the SA1}
#'   \item{SA2_2018_CODE}{Code of the SA2}
#'   \item{SA2_2018_NAME}{Name of the SA2}
#'   \item{TA_2018_CODE}{Code of the TA}
#'   \item{TA_2018_NAME}{Name of the TA}
#'   \item{RC_2018_CODE}{Code of the RC}
#'   \item{RC_2018_NAME}{Name of the RC}
#'   \item{LANDWATER_NAME}{Factor variable indicating what land type the SA1 area is}
#' }
#'
#' @source \url{https://datafinder.stats.govt.nz/}
"area_hierarchy_2018"

#' Boundaries for Statistical Area 1 2018
#'
#' A dataset of statistical area 1 (SA1) boundaries at 1 January 2018 as defined by Stats NZ.
#'
#' @format A data frame with 29889 rows and 2 variables:
#' \describe{
#'   \item{name}{Name of the SA1}
#'   \item{geom}{multipolygon of the area boundaries, as lat/long in WGS84}
#' }
#'
#' @source \url{https://datafinder.stats.govt.nz/}
"sa1_geoms_2018"

#' Boundaries for Statistical Area 2 2018
#'
#' A dataset of statistical area 2 (SA2) boundaries at 1 January 2018 as defined by Stats NZ.
#'
#' @format A data frame with 2253 rows and 3 variables:
#' \describe{
#'   \item{code}{Code of the SA2}
#'   \item{name}{Name of the SA2}
#'   \item{geom}{multipolygon of the area boundaries, as lat/long in WGS84}
#' }
#'
#' @source \url{https://datafinder.stats.govt.nz/}
"sa2_geoms_2018"

#' Boundaries for Wards 2018
#'
#' A dataset of ward boundaries at 1 January 2018 as defined by Stats NZ.
#'
#' @format A data frame with 245 rows and 3 variables:
#' \describe{
#'   \item{code}{Code of the ward}
#'   \item{name}{Name of the ward}
#'   \item{geom}{multipolygon of the area boundaries, as lat/long in WGS84}
#' }
#'
#' @source \url{https://datafinder.stats.govt.nz/}
"ward_geoms_2018"

#' Boundaries for Territorial Authorities
#'
#' A dataset of territorial authority (TA) boundaries at 1 January 2018 as defined by Stats NZ.
#'
#' @format A data frame with 68 rows and 3 variables:
#' \describe{
#'   \item{code}{Code of the TA}
#'   \item{name}{Name of the TA}
#'   \item{geom}{multipolygon of the area boundaries, as lat/long in WGS84}
#' }
#'
#' @source \url{https://datafinder.stats.govt.nz/}
"ta_geoms_2018"

#' Boundaries for Regional Council 2018
#'
#' A dataset of regional council (RC) boundaries at 1 January 2018 as defined by Stats NZ.
#'
#' @format A data frame with 17 rows and 3 variables:
#' \describe{
#'   \item{code}{Code of the RC}
#'   \item{name}{Name of the RC}
#'   \item{geom}{multipolygon of the area boundaries, as lat/long in WGS84}
#' }
#'
#' @source \url{https://datafinder.stats.govt.nz/}
"rc_geoms_2018"

#' Boundaries for Statistica Area 1 2018 (Clipped)
#'
#' A dataset of statistical area 1 (SA1) boundaries at 1 January 2018 as defined
#' by Stats NZ, clipped to the coastline. This clipped version is created for
#' map creation/cartographic purposes and so does not fully represent the
#' official full extent boundaries.
#'
#' @format A data frame with 29688 rows and 2 variables:
#' \describe{
#'   \item{name}{Name of the SA1}
#'   \item{geom}{multipolygon of the area
#'   boundaries, as lat/long in WGS84}
#'   }
#'
#' @source \url{https://datafinder.stats.govt.nz/}
"sa1_geoms_2018_clipped"

#' Boundaries for Statistical Area 2 2018 (Clipped)
#'
#' A dataset of statistical area 2 (SA2) boundaries at 1 January 2018 as defined
#' by Stats NZ, clipped to the coastline. This clipped version is created for
#' map creation/cartographic purposes and so does not fully represent the
#' official full extent boundaries.
#'
#' @format A data frame with 2171 rows and 3 variables:
#' \describe{
#'   \item{code}{Code of the SA2}
#'   \item{name}{Name of the SA2}
#'   \item{geom}{multipolygon of the area boundaries, as lat/long in WGS84}
#' }
#'
#' @source \url{https://datafinder.stats.govt.nz/}
"sa2_geoms_2018_clipped"

#' Boundaries for Wards 2018 (Clipped)
#'
#' A dataset of ward boundaries at 1 January 2018 as defined
#' by Stats NZ, clipped to the coastline. This clipped version is created for
#' map creation/cartographic purposes and so does not fully represent the
#' official full extent boundaries.
#'
#' @format A data frame with 245 rows and 3 variables:
#' \describe{
#'   \item{code}{Code of the Ward}
#'   \item{name}{Name of the Ward}
#'   \item{geom}{multipolygon of the area boundaries, as lat/long in WGS84}
#' }
#'
#' @source \url{https://datafinder.stats.govt.nz/}
"ward_geoms_2018_clipped"

#' Boundaries for Territorial Authorities 2018 (Clipped)
#'
#' A dataset of territorial authority (TA) boundaries at 1 January 2018 as defined
#' by Stats NZ, clipped to the coastline. This clipped version is created for
#' map creation/cartographic purposes and so does not fully represent the
#' official full extent boundaries.
#'
#' @format A data frame with 68 rows and 3 variables:
#' \describe{
#'   \item{code}{Code of the TA}
#'   \item{name}{Name of the TA}
#'   \item{geom}{multipolygon of the area boundaries, as lat/long in WGS84}
#' }
#'
#' @source \url{https://datafinder.stats.govt.nz/}
"ta_geoms_2018_clipped"

#' Boundaries for Regional Councils 2018 (Clipped)
#'
#' A dataset of regional council (RC) boundaries at 1 January 2018 as defined
#' by Stats NZ, clipped to the coastline. This clipped version is created for
#' map creation/cartographic purposes and so does not fully represent the
#' official full extent boundaries.
#'
#' @format A data frame with 17 rows and 3 variables:
#' \describe{
#'   \item{code}{Code of the RC}
#'   \item{name}{Name of the RC}
#'   \item{geom}{multipolygon of the area boundaries, as lat/long in WGS84}
#' }
#'
#' @source \url{https://datafinder.stats.govt.nz/}
"rc_geoms_2018_clipped"
