#' Custom [ggplot2] theme for personal use by Bluebonnet Data
#'
#' Resets the [ggplot2] theme to its default settings
#'
#'
#' @import extrafont
#' @import ggrepel
#' @md
#' @export
undo_bbd_theme <- function() {

  # set default theme to theme_grey()

  ggplot2::theme_set(ggplot2::theme_grey())

  # add Helvetica font to text and label geoms

  ggplot2::update_geom_defaults("text", list(family = "Helvetica"))
  ggplot2::update_geom_defaults("label", list(family = "Helvetica"))
  ggplot2::update_geom_defaults("text_repel", list(family = "Helvetica"))
  ggplot2::update_geom_defaults("label_repel", list(family = "Helvetica"))

  # set default colours for monochromatic geoms

  ggplot2::update_geom_defaults("bar", list(fill = "#595959"))
  ggplot2::update_geom_defaults("col", list(fill = "#595959"))
  ggplot2::update_geom_defaults("point", list(colour = "black"))
  ggplot2::update_geom_defaults("line", list(colour = "#595959"))
  ggplot2::update_geom_defaults("boxplot", list(fill = "#595959"))
  ggplot2::update_geom_defaults("density", list(fill = "#595959"))
  ggplot2::update_geom_defaults("violin", list(fill = "#595959"))

  # set default colours for monochromatic stats

  ggplot2::update_stat_defaults("count", list(fill = "#595959"))
  ggplot2::update_stat_defaults("boxplot", list(fill = "#595959"))
  ggplot2::update_stat_defaults("density", list(fill = "#595959"))
  ggplot2::update_stat_defaults("ydensity", list(fill = "#595959"))

  # default palette

  set_color_pal(palette = "default")
  scales <- c("scale_color_discrete", "scale_colour_ordinal", "scale_colour_discrete", "scale_color_continuous", "scale_color_gradient",
              "scale_colour_gradient", "scale_fill_discrete", "scale_fill_ordinal", "scale_fill_continuous", "scale_fill_gradient",
              "geom_bar", "geom_col", "geom_jitter", "geom_line", "geom_step", "geom_path")

  suppressMessages(
    for (i in scales) {
    conflicted::conflict_prefer(name   = i,
                                winner = "ggplot2",
                                loser  = "bbd")
  }
  )

  # warning message

  print("All BBD defaults were removed and the bbdata package has been effectively detached from the current environment. To restore BBD defaults, use set_bbd_theme().")

}
