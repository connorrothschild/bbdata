#' geom_bar in BBD style
#'
#' Submit `?ggplot2::geom_line` to see the full documentation for `geom_bar()`
#'
#' @md
#' @param mapping mapping from ggplot2
#' @param ... other arguments passed to \code{geom_bar()}
#' @export
geom_bar <- function(mapping = NULL, ...) {
  ggplot2::geom_bar(mapping = mapping, ...)
}

#' geom_col in BBD style
#'
#' Submit `?ggplot2::geom_line` to see the full documentation for `geom_col()`
#'
#' @md
#' @param mapping mapping from ggplot2
#' @param width column width
#' @param ... other arguments passed to \code{geom_col()}
#' @export
geom_col <- function(mapping = NULL, width = 0.75, ...) {
  ggplot2::geom_col(mapping = mapping, width = width, ...)
}

#' geom_jitter in BBD style
#'
#' Submit `?ggplot2::geom_jitter` to see the full documentation for `geom_jitter()`
#'
#' @md
#' @param mapping mapping from ggplot2
#' @param size point size
#' @param ... other arguments passed to \code{geom_jitter()}
#' @export
geom_jitter <- function(mapping = NULL, size = 3, ...) {
  ggplot2::geom_jitter(mapping = mapping, size = size, ...)
}

#' geom_line in BBD style
#'
#' Submit `?ggplot2::geom_line` to see the full documentation for `geom_line()`
#'
#' @md
#' @param mapping mapping from ggplot2
#' @param size line size
#' @param ... other arguments passed to \code{geom_line()}
#' @export
geom_line <- function(mapping = NULL, size = 1, ...) {
  ggplot2::geom_line(mapping = mapping, size = size, ...)
}

#' geom_step in BBD style
#'
#' Submit `?ggplot2::geom_step` to see the full documentation for `geom_step()`
#'
#' @md
#' @param mapping mapping from ggplot2
#' @param size line size
#' @param ... other arguments passed to \code{geom_step()}
#' @export
geom_step <- function(mapping = NULL, size = 1, ...) {
  ggplot2::geom_step(mapping = mapping, size = size, ...)
}

#' geom_path in BBD style
#'
#' Submit `?ggplot2::geom_path` to see the full documentation for `geom_path()`
#'
#' @md
#' @param mapping mapping from ggplot2
#' @param size line size
#' @param ... other arguments passed to \code{geom_path()}
#' @export
geom_path <- function(mapping = NULL, size = 1, ...) {
  ggplot2::geom_path(mapping = mapping, size = size, ...)
}
