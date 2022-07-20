#' Hide
#'
#' @param hidden A list that designates what aspect of a figure to conceal. Available options are "all", "xtext", "ytext", "xtitle", "ytitle", "title", "subtitle", "tag", "caption", "xtick" and "ytick". "sub" and "cap" can also be used in place of "subtitle" and "caption" respectively. These options can be added in any order into the hidden list however, the variable must be a list; default is "none"
#' @param colour The background color of the figure being created; default is "white"
#'
#' @return A figure with the chosen figure elements hidden without changing the figure dimensions.
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
#'hide("cap", "xtext", "xtitle", "title")
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
#'hide("caption", "sub", "title", "tag", "xtick", "ytick")
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
#'hide("all")

hide <- function(hidden = c("none"), colour = "white"){

  if("xtext" %in% hidden && "ytext" %in% hidden){
  remove <- theme(axis.text.x = element_text(color=colour)) + theme(axis.text.y = element_text(color=colour))
  } else if("ytext" %in% hidden){
  remove <- theme(axis.text.y = element_text(color=colour))
  } else if("xtext" %in% hidden){
  remove <- theme(axis.text.x = element_text(color=colour))
  } else if("all" %in% hidden){
    remove <- theme(axis.text.x = element_text(color=colour),
                    axis.text.y = element_text(color=colour),
                    axis.title.x = element_text(color=colour),
                    axis.title.y = element_text(color=colour),
                    plot.title = element_text(color=colour),
                    plot.subtitle = element_text(color=colour),
                    plot.tag = element_text(color=colour),
                    plot.caption = element_text(color=colour),
                    axis.ticks = element_blank())
  } else
  remove <- theme()

  if("xtitle" %in% hidden && "ytitle" %in% hidden){
    remove1 <- remove + theme(axis.title.x = element_text(color=colour)) + theme(axis.title.y = element_text(color=colour))
  } else if("ytitle" %in% hidden){
    remove1 <- remove + theme(axis.title.y = element_text(color=colour))
  } else if("xtitle" %in% hidden){
    remove1 <- remove + theme(axis.title.x = element_text(color=colour))
  } else
    remove1 <- remove

  if(("subtitle" %in% hidden || "sub" %in% hidden) && "title" %in% hidden){
    remove2 <- remove1 + theme(plot.title = element_text(color=colour)) + theme(plot.subtitle = element_text(color=colour))
  } else if("title" %in% hidden){
    remove2 <- remove1 + theme(plot.title = element_text(color=colour))
  } else if("subtitle" %in% hidden || "sub" %in% hidden){
    remove2 <- remove1 + theme(plot.subtitle = element_text(color=colour))
  } else
    remove2 <- remove1

  if("tag" %in% hidden && ("caption" %in% hidden || "cap" %in% hidden)){
    remove3 <- remove2 + theme(plot.tag = element_text(color=colour)) + theme(plot.caption = element_text(color=colour))
  } else if("tag" %in% hidden){
    remove3 <- remove2 + theme(plot.tag = element_text(color=colour))
  } else if("caption" %in% hidden || "cap" %in% hidden){
    remove3 <- remove2 + theme(plot.caption = element_text(color=colour))
  } else
    remove3 <- remove2

  if("xtick" %in% hidden && "ytick" %in% hidden){
    remove4 <- remove3 + theme(axis.ticks.x = element_blank()) + theme(axis.ticks.y = element_blank())
  } else if("xtick" %in% hidden){
    remove4 <- remove3 + theme(axis.ticks.x = element_blank())
  } else if("ytick" %in% hidden){
    remove4 <- remove3 + theme(axis.ticks.y = element_blank())
  } else
    remove4 <- remove3

  return(remove4)
}

hide(hidden = c("cap", "tag", "ytext", "xtitle"))
