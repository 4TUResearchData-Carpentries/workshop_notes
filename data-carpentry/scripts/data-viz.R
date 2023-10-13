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


# Barplots ----------------------------------------------------------------

interviews_plotting %>% 
  ggplot(aes(x = respondent_wall_type, fill = village)) +
    geom_bar(position = "dodge")

# create a proportional plot

percent_wall_type <- interviews_plotting %>% 
  filter(respondent_wall_type != "cement") %>% 
  count(village, respondent_wall_type) %>% 
  group_by(village) %>% 
  mutate(percent = (n / sum(n)) * 100) %>% 
  ungroup()
  
percent_wall_type %>% 
  ggplot(aes(x = respondent_wall_type, 
             y = percent)) +
    geom_bar(stat = "identity", position = "dodge") +
    labs(x = "Village",
         y = "Percent",
         title = "Proportion of wall type by village",
         fill = "Type of wall in home") +
    facet_wrap(~ village) +
    theme_bw() +
    theme(panel.grid.major.x = element_blank(),
          panel.grid.major.y = element_line(colour = "blue"))

ggsave("fig_output/myfirstplot.png", width = 15, height = 10)

