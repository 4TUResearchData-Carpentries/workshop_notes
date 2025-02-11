
# import our library
library(tidyverse)
library(here)

interviews_plotting <- read_csv(here("data_output","interview_plotting.csv"))

## A basic scatter plot
interviews_plotting %>%
  ggplot(aes(x=no_membrs,y=number_items)) +
  geom_point()

# Making points transparent and add colour
interviews_plotting %>%
  ggplot(aes(x=no_membrs,y=number_items)) +
  geom_point(alpha=0.5, colour = '#7d1542')




