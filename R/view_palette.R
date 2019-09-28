#' Custom [ggplot2] theme for personal use by Bluebonnet Data
#'
#' \code{view_palette} displays the colors and hexadecimal codes for \code{palette_bbd_*} vectors.
#' These palettes were generated on www.coolors.co/.
#'
#' @param palette A \code{palette_bbd_*} vector from \code{library(cr)}.
#'   Options are `palette_bbd_main`, `palette_bbd_diverging`, `palette_bbd_politics`, and `palette_bbd_sequential`
#'
#' @examples
#' view_palette()
#' view_palette(palette_bbd_main)
#'
#' @md
#'
#' @export
view_palette <- function(palette = palette_bbd_main) {

  color_palette <- unname(rev(palette))

  data <- tibble::tibble(x = 1,
                         y = 1:length(color_palette),
                         colors = factor(color_palette, levels = color_palette))

  ggplot2::ggplot(data = data) +
    ggplot2::geom_point(ggplot2::aes_string("x", "y", color = "colors"), size = 15) +
    ggplot2::geom_text(ggplot2::aes_string(2, "y"), label = color_palette) +
    ggplot2::scale_color_manual(values = color_palette) +
    ggplot2::scale_x_continuous(limits = c(0, 3)) +
    theme_bbd_texas() +
    ggplot2::guides(color = FALSE)

}
