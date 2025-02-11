
# import our library
library(tidyverse)
library(here)

interviews_plotting <- read_csv(here("data_output","interview_plotting.csv"))

## A basic scatter plot
interviews_plotting %>%
  ggplot(aes(x=no_membrs,y=number_items)) +
  geom_point()

# Making points transparent
interviews_plotting %>%
  ggplot(aes(x=no_membrs,y=number_items)) +
  geom_point()



