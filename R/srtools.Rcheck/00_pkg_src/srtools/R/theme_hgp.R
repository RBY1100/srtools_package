#' Henry Gannett Atlas Theme
#'
#' @return A figure that resembles the 1890 Statistical Atlas from Henry Gannett.
#'
#' @param colour The background color for the figure; defaults to #f1d9b5
#'
#' @export
#'
#' @examples library("ggplot2")
#'
#'ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
#'geom_col(color = "black", fill = "black", width = 0.45, ) +
#'labs(title = "POPULATION OF EACH STATE",
#'     subtitle = "(Population in 2021)",
#'     x = "Population",
#'     y = "State") +
#'theme_hga()

theme_hga <- function(colour = "#f1d9b5"){
  sysfonts::font_add_google(name = "Courier Prime", family = "Main")
  showtext::showtext_auto()

  font <- "Main"

  theme_minimal() %+replace%

    theme(

      #grid elements
      panel.grid.major = element_line(color = "black", size = .25),
      panel.grid.minor = element_blank(),

      panel.background = element_rect(color="black", fill= colour),
      plot.background = element_rect(fill = colour),

      plot.title = element_text(
        family = font,
        size = 7,
        face = 'bold'),

      plot.subtitle = element_text(
        family = font,
        size = 7),

      plot.tag = element_text(
        family = font,
        size = 7),

      plot.caption = element_text(
        family = font,
        size = 9),

      axis.title = element_blank(),

      axis.text.y = element_text(
        family = font,
        size = 8,
        color = "black"),

      axis.text.x = element_text(
        family = font,
        size = 7,
        color = "black")
    )
}
