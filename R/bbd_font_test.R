#' Test for font import and registration
#'
#' \code{bbd_font_test} tests to see if default fonts are imported and registered.
#'
#' Import and register fonts in R with bbd_font_install().
#'
#' @md
#' @export
bbd_font_test <- function() {
  if (sum(grepl("[Rr]aleway*", extrafont::fonts())) == 0) {
    print("Raleway is not imported and registered. Install the font online and import and register using font_install(). If that presents problems, try using sysfonts::font_add('Raleway', regular = 'Raleway.ttf') with your downloaded font name taking the place of 'Raleway.ttf.'")
  } else {
    print("Raleway is imported!")
  }
}