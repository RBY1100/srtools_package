pkgname <- "srtools"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('srtools')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("hide")
### * hide

flush(stderr()); flush(stdout())

### Name: hide
### Title: Hide Chosen Figure Elements
### Aliases: hide

### ** Examples

library("ggplot2")

ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
geom_col(color = "black", fill = "black", width = 0.45, ) +
labs(title = "POPULATION OF EACH STATE",
    subtitle = "(Population in 2021)",
    tag = "tag example",
    caption = "caption example",
    x = "Population",
    y = "State") +
    hide("cap", "xtext", "xtitle", "title")

ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
geom_col(color = "black", fill = "black", width = 0.45, ) +
labs(title = "POPULATION OF EACH STATE",
    subtitle = "(Population in 2021)",
    tag = "tag example",
    caption = "caption example",
    x = "Population",
    y = "State") +
    hide("caption", "sub", "title", "tag", "xtick", "ytick")

ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
geom_col(color = "black", fill = "black", width = 0.45, ) +
labs(title = "POPULATION OF EACH STATE",
    subtitle = "(Population in 2021)",
    tag = "tag example",
    caption = "caption example",
    x = "Population",
    y = "State") +
    hide("all")



cleanEx()
nameEx("hide_axistext")
### * hide_axistext

flush(stderr()); flush(stdout())

### Name: hide_axistext
### Title: Hide Axis Text
### Aliases: hide_axistext

### ** Examples

library("ggplot2")

ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
geom_col(color = "black", fill = "black", width = 0.45, ) +
labs(title = "POPULATION OF EACH STATE",
    subtitle = "(Population in 2021)",
    x = "Population",
    y = "State") +
hide _axistext()

ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
geom_col(color = "black", fill = "black", width = 0.45, ) +
labs(title = "POPULATION OF EACH STATE",
    subtitle = "(Population in 2021)",
    x = "Population",
    y = "State") +
hide _axistext("x")



cleanEx()
nameEx("hide_axistitle")
### * hide_axistitle

flush(stderr()); flush(stdout())

### Name: hide_axistitle
### Title: Hide Axis Title
### Aliases: hide_axistitle

### ** Examples

library("ggplot2")

ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
geom_col(color = "black", fill = "black", width = 0.45, ) +
labs(title = "POPULATION OF EACH STATE",
    subtitle = "(Population in 2021)",
    x = "Population",
    y = "State") +
hide _axistitle()

ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
geom_col(color = "black", fill = "black", width = 0.45, ) +
labs(title = "POPULATION OF EACH STATE",
    subtitle = "(Population in 2021)",
    x = "Population",
    y = "State") +
hide _axistitle("x")



cleanEx()
nameEx("hide_misctext")
### * hide_misctext

flush(stderr()); flush(stdout())

### Name: hide_misctext
### Title: Hide Misc Text
### Aliases: hide_misctext

### ** Examples

library("ggplot2")

ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
geom_col(color = "black", fill = "black", width = 0.45, ) +
labs(title = "POPULATION OF EACH STATE",
    subtitle = "(Population in 2021)",
    tag = "tag example",
    caption = "caption example",
    x = "Population",
    y = "State") +
hide_misctext()

ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
geom_col(color = "black", fill = "black", width = 0.45, ) +
labs(title = "POPULATION OF EACH STATE",
    subtitle = "(Population in 2021)",
    tag = "tag example",
    caption = "caption example",
    x = "Population",
    y = "State") +
hide_misctext("cap")



cleanEx()
nameEx("hide_titles")
### * hide_titles

flush(stderr()); flush(stdout())

### Name: hide_titles
### Title: Hide Titles
### Aliases: hide_titles

### ** Examples

library("ggplot2")

ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
geom_col(color = "black", fill = "black", width = 0.45, ) +
labs(title = "POPULATION OF EACH STATE",
    subtitle = "(Population in 2021)",
    x = "Population",
    y = "State") +
hide_titles()

ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
geom_col(color = "black", fill = "black", width = 0.45, ) +
labs(title = "POPULATION OF EACH STATE",
    subtitle = "(Population in 2021)",
    x = "Population",
    y = "State") +
hide_titles("sub")



cleanEx()
nameEx("theme_dub")
### * theme_dub

flush(stderr()); flush(stdout())

### Name: theme_dub
### Title: Du Bois Theme
### Aliases: theme_dub

### ** Examples

library("ggplot2")

ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
geom_col(color = "black", fill = "black", width = 0.45, ) +
labs(title = "POPULATION OF EACH STATE",
    subtitle = "(Population in 2021)",
    x = "Population",
    y = "State") +
theme_dub()



cleanEx()
nameEx("theme_hga")
### * theme_hga

flush(stderr()); flush(stdout())

### Name: theme_hga
### Title: Henry Gannett Atlas Theme
### Aliases: theme_hga

### ** Examples

library("ggplot2")

ggplot(states, aes(x = Pop, y = fct_rev(fct_inorder(State))), fill = NA) +
geom_col(color = "black", fill = "black", width = 0.45, ) +
labs(title = "POPULATION OF EACH STATE",
    subtitle = "(Population in 2021)",
    x = "Population",
    y = "State") +
theme_hga()



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
