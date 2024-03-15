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
  geom_jitter()
