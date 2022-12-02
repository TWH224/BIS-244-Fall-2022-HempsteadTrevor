#Trevor Hempstead Assignment 5

library(maps)
library(usmap)
library(ggplot2)
library(dplyr)

Data1 <- read.csv("Assignment5Data.csv")

us_states <- map_data("state")

us_map <- usmap::us_map(region = "states")

usmap::plot_usmap(data = Data1, values = "deaths") +
  scale_fill_continuous() + theme_grey()
