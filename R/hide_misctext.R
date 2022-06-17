#' Hide Misc Text
#'
#' @param hide Designate whether to hide the plots tag, caption, or both; options include "tag", "cap", and "both"; default is "both"
#' @param colour The background color of the figure being created; default is "white"
#'
#' @return A figure with the tag/caption hidden without changing the figure dimensions.
#' @export
#'
#' @examples library("ggplot2")
#'
#'ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
#'geom_col(color = "black", fill = "black", width = 0.45, ) +
#'labs(title = "POPULATION OF EACH STATE",
#'     subtitle = "(Population in 2021)",
#'     tag = "tag example",
#'     caption = "caption example",
#'     x = "Population",
#'     y = "State") +
#'hide_misctext()
#'
#' @examples
#'ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
#'geom_col(color = "black", fill = "black", width = 0.45, ) +
#'labs(title = "POPULATION OF EACH STATE",
#'     subtitle = "(Population in 2021)",
#'     tag = "tag example",
#'     caption = "caption example",
#'     x = "Population",
#'     y = "State") +
#'hide_misctext("cap")

hide_misctext <- function(hide = "both", colour = "white"){

  if(hide == "tag"){
    theme(plot.tag = element_text(color=colour))
  } else if(hide == "cap"){
    theme(plot.caption = element_text(color=colour))
  } else if(hide == "both"){
    theme(plot.tag = element_text(color=colour),
          plot.caption = element_text(color=colour)
    )
  }
}
