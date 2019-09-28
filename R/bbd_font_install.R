#' Import and register Raleway & IBM Plex Sans font
#'
#' \code{bbd_font_install} tests to see if default fonts imported and registered. If Raleway & IBM Plex Sans are not imported and registered, then \code{bbd_font_install} imports and registers Raleway & IBM Plex Sans with \href{https://github.com/wch/extrafont}{library(extrafont)}.
#'
#' Note: Raleway and IBM Plex Sans must be installed on your computer for \code{bbd_font_install} to work.
#'
#' Test to see if Raleway and IBM Plex Sans are imported and registered with \code{bbd_font_test()}.
#'
#' @md
#' @export
bbd_font_install <- function() {
  if (sum(grepl("[Rr]aleway*", extrafont::fonts())) > 0 &&
      sum(grepl("IBM Plex Sans*",  extrafont::fonts())) > 0) {
    "Available fonts (IBM Plex Sans and Raleway) already imported and registered."
  } else {
    extrafont::font_import()
    extrafont::loadfonts()
    bbd_font_test()
  }
}
