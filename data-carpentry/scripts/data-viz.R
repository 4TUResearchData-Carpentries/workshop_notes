library(here)
library(tidyverse)

interviews_plotting <- read_csv(here("data_output/interviews_plotting.csv"))

# Our first plot

interviews_plotting %>% 
  ggplot(aes(x = no_membrs, y = number_items)) +
    geom_point(alpha = 0.3) # scatter plot

# Another plot

interviews_plotting %>% 
  ggplot(aes(x = no_membrs, y = number_items)) +
    geom_jitter(alpha = 0.3,
                width = 0.2,
                height = 0.2,
                colour = "blue")

interviews_plotting %>% 
  ggplot(aes(x = no_membrs, 
             y = number_items, 
             col = village)) +
    geom_jitter()

pl <- interviews_plotting %>% 
  ggplot(aes(x = no_membrs, 
             y = number_items, 
             col = village))

pl +
  geom_count()

# Box plots ---------------------------------------------------------------

interviews_plotting %>% 
  ggplot(aes(x = respondent_wall_type, y = rooms)) +
    geom_boxplot() +
    geom_jitter(width = 0.2,
                height = 0.2,
                alpha = 0.3)
  
interviews_plotting %>% 
  filter(respondent_wall_type != "cement") %>% 
  ggplot(aes(x = respondent_wall_type, y = rooms)) +
  geom_violin(aes(fill = respondent_wall_type)) +
  geom_boxplot(width = 0.2)
  
  
  
  
  
