#' Henry Gannett Atlas Theme
#'
#' @return A graph resembles the 1890 Statistical Atlas from Henry Gannett.
#' @export
#'
#' @examples library("ggplot2")
#'
#' ggplot(data = Titanic, aes(x = Class, y = Freq, fill = Survived)) +
#' geom_col() +
#' theme_hga()
theme_hga <- function(){
  sysfonts::font_add_google(name = "Courier Prime", family = "Main")
  showtext::showtext_auto()

  font <- "Main"

  theme_minimal() %+replace%

    theme(

      #grid elements
      panel.grid.major = element_line(color = "black", size = .25),
      panel.grid.minor = element_blank(),

      panel.background = element_rect(color="black", fill= "#f1d9b5"),
      plot.background = element_rect(fill = "#f1d9b5"),

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
