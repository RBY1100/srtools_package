#' Du Bois Theme
#'
#' @return A figure that resembles graphs and tables created by Du Bois.
#'
#' @param colour The background color for the figure; defaults to #dec8b1
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
#'theme_dub()

theme_dub <- function(colour = "#dec8b1"){
  sysfonts::font_add_google(name = "Puritan", family = "Main")
  showtext::showtext_auto()

  font <- "Main"

  theme_minimal() %+replace%

    theme(

      #grid elements
      panel.grid.major = element_line(color = "black", size = .25),
      panel.grid.minor = element_blank(),

      panel.background = element_rect(color="black", fill = colour),
      plot.background = element_rect(fill = colour),

      plot.title = element_text(
        family = font,
        size = 18,
        face = 'bold'),

      plot.subtitle = element_text(
        family = font,
        size = 14,
        face = 'italic'),

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
