#' Hide Axis Text
#'
#' @param hide The axis you wish to hide; options include "x", "y", and "both"; default is "both"
#' @param colour The background color of the figure being created; default is "white"
#'
#' @return A figure with the chosen axis hidden without changing the figure dimensions.
#' @export
#'
#' @examples
#'
#'
#'
hide_axistext <- function(hide = "both", colour = "white"){

  choice <- hide

  if(choice == "x"){
    theme(axis.text.x = element_text(color=colour))
  } else if(choice == "y"){
      theme(axis.text.y = element_text(color=colour))
    } else {
    theme(axis.text.x = element_text(color=colour),
          axis.text.y = element_text(color=colour)
    )
}
}
