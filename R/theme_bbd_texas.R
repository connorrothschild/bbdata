#' A Texas shaped [ggplot2] theme formatted in BBD style
#'
#' \code{theme_bbd} provides a [ggplot2] theme formatted according to the BBD
#' website
#'
#' @import extrafont
#' @import ggrepel
#' @md
#' @param base_family base font family
#' @param base_size base font size
#' @param base_line_size base line
#' @param base_rect_size base rectangle sizes
#' @param scale scale
#' @export
theme_bbd_texas <- function(scale = "continuous",
                           base_size = 12,
                           base_family = "Raleway",
                           base_line_size = 0.5,
                           base_rect_size = 0.5) {

  # add font
  ggplot2::theme_update(text = ggplot2::element_text(family = base_family))
  ggplot2::update_geom_defaults("text", list(family = base_family))
  ggplot2::update_geom_defaults("label", list(family = base_family))
  ggplot2::update_geom_defaults("text_repel", list(family = base_family))
  ggplot2::update_geom_defaults("label_repel", list(family = base_family))
  
  gg <- theme_bbd_print(base_size = 12, base_family = base_family,
                         base_line_size = 0.5,
                         base_rect_size = 0.5)

  gg <- gg +  ggplot2::theme(

    # make changes for mapping styles
    axis.text = ggplot2::element_blank(),
    axis.ticks = ggplot2::element_blank(),
    axis.title = ggplot2::element_blank(),
    panel.grid = ggplot2::element_blank(),
    axis.line = ggplot2::element_blank(),
    legend.margin = ggplot2::margin(t = 6L, r = 6L, b = 6L, l = 6L, "pt")
  )

  if (scale == "continuous") {
    gg <- gg + ggplot2::theme(
      legend.position = "right",
      legend.direction = "vertical",
      legend.title = ggplot2::element_text(size = base_size)
    )
  }
  # return gg
  gg
}

