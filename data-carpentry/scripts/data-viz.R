
# import our library
library(tidyverse)
library(here)

interviews_plotting <- read_csv(here("data_output","interview_plotting.csv"))

interviews_plotting %>%
  ggplot(aes(x=no_membrs,y=number_items)) +
  geom_point()

