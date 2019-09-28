#' Test for font import and registration
#'
#' \code{bbd_font_test} tests to see if default fonts are imported and registered.
#'
#' Import and register fontsin R with bbd_font_install().
#'
#' @md
#' @export
bbd_font_test <- function() {
  if (sum(grepl("[Rr]aleway*", extrafont::fonts())) > 0 &&
      sum(grepl("IBM Plex Sans*", extrafont::fonts())) > 0) {
    print("Default fonts are imported and registered.")
  } else {
    if (sum(grepl("IBM Plex Sans*", extrafont::fonts())) == 0) {
    print("IBM Plex Sans is not imported and registered. Install the font online and import and register using font_install(). If that presents problems, try using sysfonts::font_add('IBM Plex Sans', regular = 'IBM Plex Sans.ttf') with your downloaded font name taking the place of 'IBM Plex Sans.ttf.'")
  } else if (sum(grepl("[Rr]aleway*", extrafont::fonts())) == 0) {
    print("Raleway is not imported and registered. Install the font online and import and register using font_install(). If that presents problems, try using sysfonts::font_add('Raleway', regular = 'Raleway.ttf') with your downloaded font name taking the place of 'Raleway.ttf.'")
  } 
  }
}