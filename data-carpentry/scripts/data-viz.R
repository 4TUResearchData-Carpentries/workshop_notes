# Data visualisation
library(tidyverse)

interviews_plotting <- read_csv("data_output/interviews_plotting.csv")

# first plot

interviews_plotting %>%
  ggplot(aes(x = no_membrs, y = number_items)) +
    geom_point(alpha  = 0.3)

# a better plot

interviews_pl <- interviews_plotting %>%
  ggplot(aes(x = no_membrs, y = number_items))

interviews_pl +
  geom_jitter(
    alpha = 0.5,
    width = 0.2,
    height = 0.2,
    colour = "blue"
    )

# Mapping

interviews_plotting %>%
  ggplot(aes(x = no_membrs, y = number_items, colour = village)) +
    geom_jitter(alpha = 0.5,
      width = 0.2,
      height = 0.2)

interviews_pl +
  geom_jitter(aes(colour = village))

interviews_plotting %>%
  ggplot(aes(x = village, y = rooms)) +
    geom_boxplot(fill = "blue") +
    geom_jitter(
      aes(color = respondent_wall_type),
      alpha = 0.3,
      width = 0.2,
      height = 0.2)

# Bar plots




