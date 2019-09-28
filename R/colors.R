bbd_color_list <- c(
  `seqblue1` = "#f7fbff",
  `seqblue2` = "#deebf7",
  `seqblue3` = "#c6dbef",
  `seqblue4` = "#9ecae1",
  `seqblue5` = "#6baed6",
  `seqblue6` = "#4292c6",
  `seqblue7` = "#2171b5",
  `seqblue8` = "#08519c",
  `seqblue9` = "#08306b",
  `divred2`  = "#b2182b",
  `divred3`  = "#d6604d",
  `divred4`  = "#f4a582",
  `divred5`  = "#fddbc7",
  `divneutr` = "#dedede",
  `divblue5` = "#d1e5f0",
  `divblue4` = "#92c5de",
  `divblue3` = "#4393c3",
  `divblue2` = "#2166ac",
  `primary`  = "#DEFFFC",
  `red`      = "#D72638",
  `salmon`   = "#EFD0CA",
  `gold`     = "#D4CB92",
  `emphasis` = "#00305B"
)

#' Function to extract `bbd_color_list` colors as hex codes
#'
#' @param ... Character names of bbd_color_list colors
#' @export
bbd_colors <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return(bbd_color_list)

  bbd_color_list[cols]
}

#' List of CR Palettes
#'
#' @format A \code{list}
#' @export
bbd_palettes <-
  list(
    `diverging`   = bbd_colors("divred2", "divred3", "divred4", "divred5", "divneutr", "divblue5", "divblue4", "divblue3", "divblue2"),
    `sequential`  = bbd_colors("seqblue1", "seqblue2", "seqblue3", "seqblue4", "seqblue5", "seqblue6", "seqblue7", "seqblue8", "seqblue9"),
    `categorical` = bbd_colors("primary", "gold", "red", "salmon","emphasis")
  )

#' Bluebonnet Data custom color palettes
#'
#'@family CR palettes
#'@rdname bbd_palettes
#'@export
palette_bbd_main <- bbd_palettes$categorical

#'@rdname bbd_palettes
#'@export
palette_bbd_diverging <- bbd_palettes$diverging

#'@rdname bbd_palettes
#'@export
palette_bbd_sequential <- bbd_palettes$sequential
