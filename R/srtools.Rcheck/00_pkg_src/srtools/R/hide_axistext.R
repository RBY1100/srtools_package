#' Hide Axis Text
#'
#' @param hide The axis text you wish to hide; options include "x", "y", and "both"; default is "both"
#' @param colour The background color of the figure being created; default is "white"
#'
#' @return A figure with the chosen axis text hidden without changing the figure dimensions.
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
#'hide _axistext()
#'
#' @examples
#'ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
#'geom_col(color = "black", fill = "black", width = 0.45, ) +
#'labs(title = "POPULATION OF EACH STATE",
#'     subtitle = "(Population in 2021)",
#'     x = "Population",
#'     y = "State") +
#'hide _axistext("x")

hide_axistext <- function(hide = "both", colour = "white"){

  if(hide == "x"){
    theme(axis.text.x = element_text(color=colour))
  } else if(hide == "y"){
      theme(axis.text.y = element_text(color=colour))
    } else if(hide == "both"){
    theme(axis.text.x = element_text(color=colour),
          axis.text.y = element_text(color=colour)
    )
}
}
