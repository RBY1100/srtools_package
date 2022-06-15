#' Du Bois Theme
#'
#' @return A graph resembles graphs and tables created by Du Bois.
#' @export
#'
#' @examples library("ggplot2")
#'
#' ggplot(data = Titanic, aes(x = Class, y = Freq, fill = Survived)) +
#' geom_col() +
#' theme_dub()
theme_dub <- function(){
  sysfonts::font_add_google(name = "Puritan", family = "Main")
  showtext::showtext_auto()

  font <- "Main"

  theme_minimal() %+replace%

    theme(

      #grid elements
      panel.grid.major = element_line(color = "black", size = .25),
      panel.grid.minor = element_blank(),

      panel.background = element_rect(color="black", fill= "#dec8b1"),
      plot.background = element_rect(fill = "#dec8b1"),

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
