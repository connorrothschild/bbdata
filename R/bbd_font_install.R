#' Import and register Raleway
#'
#' \code{bbd_font_install} tests to see if default fonts imported and registered. If Raleway are not imported and registered, then \code{bbd_font_install} imports and registers Raleway with \href{https://github.com/wch/extrafont}{library(extrafont)}.
#'
#' Note: Raleway must be installed on your computer for \code{bbd_font_install} to work.
#'
#' Test to see if Raleway are imported and registered with \code{bbd_font_test()}.
#'
#' @md
#' @export
bbd_font_install <- function() {
  if (sum(grepl("[Rr]aleway*", extrafont::fonts())) > 0) {
    "Raleway is already imported and registered."
  } else {
    extrafont::font_import()
    extrafont::loadfonts()
    bbd_font_test()
  }
}
