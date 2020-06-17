#' Import and register Raleway
#'
#' \code{bbd_font_install} tests to see if default fonts imported and registered. If Raleway are not imported and registered, then \code{bbd_font_install} imports and registers Raleway with \href{https://github.com/wch/extrafont}{library(extrafont)}.
#'
#' Note: Raleway must be installed on your computer for \code{bbd_font_install} to work.
#'
#' Test to see if Raleway are imported and registered with \code{bbd_font_test()}.
#'
#' @md
#' @param device Font device. Options are 'pdf', 'win', and 'postscript.' Defaults to 'pdf.' For more on your system's font device, see https://github.com/wch/extrafont
#' @param force Should the system force installation, even if Raleway is already present? You might select this option if you have since downloaded additional versions/faces of Raleway. Defaults to FALSE.
#' 
#' @export
bbd_font_install <- function(device = 'pdf', force = FALSE) {
  if (sum(grepl("[Rr]aleway*", extrafont::fonts())) > 0 && !force) {
    "Raleway is already imported and registered."
  } else {
    extrafont::font_import(pattern = "[Rr]aleway*")
    extrafont::loadfonts(device = device, quiet = TRUE)
    bbd_font_test()
  }
}
