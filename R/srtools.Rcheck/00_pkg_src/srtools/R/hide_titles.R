#' Hide Titles
#'
#' @param hide Designate whether to hide the title, subtitle, or both; options include "title", "sub", and "both"; default is "both"
#' @param colour The background color of the figure being created; default is "white"
#'
#' @return A figure with the title/subtitle hidden without changing the figure dimensions.
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
#'hide_titles()
#'
#' @examples
#'ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
#'geom_col(color = "black", fill = "black", width = 0.45, ) +
#'labs(title = "POPULATION OF EACH STATE",
#'     subtitle = "(Population in 2021)",
#'     x = "Population",
#'     y = "State") +
#'hide_titles("sub")

hide_titles <- function(hide = "both", colour = "white"){

  if(hide == "title"){
    theme(plot.title = element_text(color=colour))
  } else if(hide == "sub"){
    theme(plot.subtitle = element_text(color=colour))
  } else if(hide == "both"){
    theme(plot.title = element_text(color=colour),
          plot.subtitle = element_text(color=colour)
    )
  }
}
