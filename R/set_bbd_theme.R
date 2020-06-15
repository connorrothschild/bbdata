#' The BBD [ggplot2] theme
#'
#' \code{set_bbd_theme} provides a [ggplot2] theme formatted according to the
#' BBD website.
#'
#' @param style The default theme style for the R session. Options are "print" or "Texas".
#' @import extrafont
#' @import ggrepel
#' @md
#' @export
set_bbd_theme <- function(style = "print") {

  #.onLoad()

  # set default theme

    if (style == "print") {
    ggplot2::theme_set(theme_bbd_print())
  } else if (style == "Texas") {
    ggplot2::theme_set(theme_bbd_texas())
  } else {
    stop('Style does not exist. Try "print" or "Texas".',
         call. = FALSE
      )
  }

  # add font
     ggplot2::theme_update(text = ggplot2::element_text(family = "Raleway"))
     ggplot2::update_geom_defaults("text", list(family = "Raleway"))
     ggplot2::update_geom_defaults("label", list(family = "Raleway"))
     ggplot2::update_geom_defaults("text_repel", list(family = "Raleway"))
     ggplot2::update_geom_defaults("label_repel", list(family = "Raleway"))

# select color palette

# set color scales for continuous

    options(
      ggplot2.continuous.colour = "gradient",
      ggplot2.continuous.fill = "gradient"
        )

# set colors for single bars, etc.

    config <- yaml::read_yaml("https://raw.githubusercontent.com/connorrothschild/bbdata/master/config.yaml")

    ggplot2::update_geom_defaults("bar", list(fill = config$palettes$bbd_main$primary))
    ggplot2::update_geom_defaults("col", list(fill = config$palettes$bbd_main$primary))
    ggplot2::update_geom_defaults("point", list(colour = config$palettes$bbd_main$primary))
    ggplot2::update_geom_defaults("line", list(colour = config$palettes$bbd_main$primary))
    ggplot2::update_geom_defaults("step", list(colour = config$palettes$bbd_main$primary))
    ggplot2::update_geom_defaults("path", list(colour = config$palettes$bbd_main$primary))
    ggplot2::update_geom_defaults("boxplot", list(fill = config$palettes$bbd_main$primary))
    ggplot2::update_geom_defaults("density", list(fill = config$palettes$bbd_main$primary))
    ggplot2::update_geom_defaults("violin", list(fill = config$palettes$bbd_main$primary))

# set colors for stats

    ggplot2::update_stat_defaults("count", list(fill = config$palettes$bbd_main$primary))
    ggplot2::update_stat_defaults("boxplot", list(fill = config$palettes$bbd_main$primary))
    ggplot2::update_stat_defaults("density", list(fill = config$palettes$bbd_main$primary))
    ggplot2::update_stat_defaults("ydensity", list(fill = config$palettes$bbd_main$primary))

}
