library(tidyverse)
library(ggplot2)
library(devtools)
library(extrafont)
library(showtextdb)

ba_theme_dark <- function() {
  hind_light <- "Hind Light"
  hind_medium <- "Hind Medium"
  
  ba_theme_dark <- theme_void() %+replace%
    theme(
      aspect.ratio = .55,
      axis.title.x = element_text(family = hind_light, size = 14, color = "#C4C5C4", hjust = 0.5, margin = margin(3,0,0,0, "mm")),
      axis.title.y = element_text(family = hind_light, size = 14, color = "#C4C5C4", hjust = 0.5, margin = margin(0,3,0,0, "mm"), angle = 90),
      axis.text.x  = element_text(family = hind_light, size = 12, color = "#C4C5C4", margin = margin(2,0,0,0, unit = "mm")),
      axis.text.y = element_text(family = hind_light, size = 12, color = "#C4C5C4", margin = margin(0,2,0,0, "mm")),
      axis.ticks = element_line(size = 1, color = "#C4C5C4"),
      axis.line = element_line(size = 1, linetype = "solid", lineend = NULL, color = "#C4C5C4"),
      plot.background = element_rect(fill = "#313C4C"),
      plot.title = element_text(family = hind_medium, size = 16, hjust = 0, color = "#C4C5C4", margin = margin(0,0,1,0,"mm")),
      plot.subtitle = element_text(family = hind_light, size = 12, color = "#C4C5C4", hjust = 0, margin = margin(0,0,3,0,"mm")),
      legend.text = element_text(family = hind_light, size = 10, color = "#C4C5C4", margin = margin(0,3,0,0, "mm")),
      legend.title = element_text(family = hind_light, size = 12, hjust = 0.5, color = "#C4C5C4", margin = margin(0,3,0,0, "mm")),
      strip.text.x = element_text(family = hind_light, size = 12, color = "#C4C5C4"),
      strip.text.y = element_text(family = hind_light, size = 12, color = "#C4C5C4"),
      plot.margin = margin(.5,.2,.2,.2,"cm"),
    )
  return(ba_theme_dark)
}