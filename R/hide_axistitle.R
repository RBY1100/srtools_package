#' Hide Axis Title
#'
#' @param hide The axis title you wish to hide; options include "x", "y", and "both"; default is "both"
#' @param colour The background color of the figure being created; default is "white"
#'
#' @return A figure with the chosen axis title hidden without changing the figure dimensions.
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
#'hide _axistitle()
#'
#' @examples
#'ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
#'geom_col(color = "black", fill = "black", width = 0.45, ) +
#'labs(title = "POPULATION OF EACH STATE",
#'     subtitle = "(Population in 2021)",
#'     x = "Population",
#'     y = "State") +
#'hide _axistitle("x")

hide_axistitle <- function(hide = "both", colour = "white"){

  if(hide == "x"){
    theme(axis.title.x = element_text(color=colour))
  } else if(hide == "y"){
    theme(axis.title.y = element_text(color=colour))
  } else if(hide == "both"){
    theme(axis.title.x = element_text(color=colour),
          axis.title.y = element_text(color=colour)
    )
  }
}
