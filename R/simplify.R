#' Topologically-aware geometry simplification.
#'
#' A wrapper around `rmapshaper::`\code{\link[rmapshaper]{ms_simplify}}, which uses
#' \href{https://github.com/mbloch/mapshaper}{mapshaper} to simplify polygons.
#' Also uses `rmapshaper::check_sys_mapshaper`` to automatically use the system
#' mapshaper instead of the bundled mapshaper where possible.
#'
#' For examples, see \code{\link[rmapshaper]{ms_simplify}}
#'
#' @param input spatial object to simplify. One of:
#' \itemize{
#'  \item \code{geo_json} or \code{character} polygons or lines;
#'  \item \code{geo_list} polygons or lines;
#'  \item \code{SpatialPolygons*} or \code{SpatialLines*};
#'  \item \code{sf} or \code{sfc} polygons or lines object
#'  }
#' @param keep proportion of points to retain (0-1; default 0.05)
#' @param method simplification method to use: \code{"vis"} for Visvalingam
#'   algorithm, or \code{"dp"} for Douglas-Peuker algorithm. If left as
#'   \code{NULL} (default), uses Visvalingam simplification but modifies the
#'   area metric by underweighting the effective area of points at the vertex of
#'   more acute angles, resulting in a smoother appearance. See this
#'   \url{https://github.com/mbloch/mapshaper/wiki/Simplification-Tips}{link}
#'   for more information.
#' @param weighting Coefficient for weighting Visvalingam simplification
#' (default is 0.7). Higher values produce smoother output. weighting=0 is
#' equivalent to unweighted Visvalingam simplification.
#' @param keep_shapes Prevent small polygon features from disappearing at high
#'   simplification (default \code{FALSE})
#' @param no_repair disable intersection repair after simplification (default
#'   \code{FALSE}).
#' @param snap Snap together vertices within a small distance threshold to fix
#'   small coordinate misalignment in adjacent polygons. Default \code{TRUE}.
#' @param explode Should multipart polygons be converted to singlepart polygons?
#'   This prevents small shapes from disappearing during simplification if
#'   \code{keep_shapes = TRUE}. Default \code{FALSE}
#' @param force_FC should the output be forced to be a \code{FeatureCollection}
#'   even if there are no attributes? Default \code{TRUE}.
#'   \code{FeatureCollections} are more compatible with \code{rgdal::readOGR}
#'   and \code{geojsonio::geojson_sp}. If \code{FALSE} and there are no
#'   attributes associated with the geometries, a \code{GeometryCollection} will
#'   be output. Ignored for \code{Spatial} objects, as the output is always the
#'   same class as the input.
#' @param drop_null_geometries should Features with null geometries be dropped?
#'   Ignored for \code{Spatial*} objects, as it is always \code{TRUE}.
#' @param snap_interval Specify snapping distance in source units, must be a
#'   numeric. Default \code{NULL}
#' @param sys Should the system mapshaper be used instead of the bundled mapshaper? Gives
#'   better performance on large files. Requires the mapshaper node package to be installed
#'   and on the PATH. Will use the system mapshaper by default if it is available.
#'
#' @return a simplified representation of the geometry in the same class as the
#'   input
#'
#' @export
ms_simplify = function(input,
                    keep = 0.05,
                    method = NULL,
                    weighting = 0.7,
                    keep_shapes = FALSE,
                    no_repair = FALSE,
                    snap = TRUE,
                    explode = FALSE,
                    force_FC = TRUE,
                    drop_null_geometries = TRUE,
                    snap_interval = NULL,
                    sys = TRUE) {

  # Check for system mapshaper
  sys = tryCatch({
    if (sys) {
      sys = rmapshaper::check_sys_mapshaper(verbose = FALSE)
    }},
    error = function(sys) {sys = FALSE}
  )

  rmapshaper::ms_simplify(
    input,
    keep = keep,
    method = method,
    weighting = weighting,
    keep_shapes = keep_shapes,
    no_repair = no_repair,
    snap = snap,
    explode = explode,
    force_FC = force_FC,
    drop_null_geometries = drop_null_geometries,
    snap_interval = snap_interval,
    sys = sys
  )

}
