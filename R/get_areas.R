#' Function to access geographic areas from the db.geonz package
#'
#' @param area_type
#' @param clipped
#'
#' @return
#' @export
#'
#' @examples
get_areas = function(area_type, clipped=TRUE) {
  # Make sure an area_type is provided
  assertthat::assert_that(!is.null(area_type), msg = "Must provide an area_type")

  # Make sure that clipped is either TRUE or FALSE
  assertthat::assert_that(isTRUE(clipped) | isFALSE(clipped), msg = "clipped must be TRUE or FALSE")

  # Cast area_type to lowercase
  area_type = tolower(area_type)

  # Make sure area type is one of the accepted types
  types = c("sa1", "sa2", "ward", "ta", "rc")
  assertthat::assert_that(area_type %in% types, msg = "area_type must be one of sa1, sa2, ward, ta, rc")

  # Construct the name of the required dataframe
  name_comps = c(area_type, "geoms", "2018")
  if (clipped) {name_comps = append(name_comps, "clipped")}
  df_name = paste(name_comps, collapse="_")

  # Gather the data and return it
  res = eval(parse(text = paste0("db.geonz::", df_name)))
  return (res)

}
