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

interviews_plotting %>%
  ggplot(aes(x = respondent_wall_type)) +
    geom_bar(aes(fill = village), position = "dodge")

# normalise

percent_wall_type <- interviews_plotting %>%
  filter(respondent_wall_type != "cement") %>%
  count(village, respondent_wall_type) %>%
  group_by(village) %>%
  mutate(percent = (n / sum(n)) * 100)

view(percent_wall_type)

percent_wall_type %>%
  ggplot(aes(x = village, y = percent, fill = respondent_wall_type)) +
    geom_bar(position = "dodge", stat = "identity")

percent_wall_type %>%
  ggplot(aes(x = village, y = percent, fill = respondent_wall_type)) +
  geom_col(position = "dodge")

percent_wall_type %>%
  ggplot(aes(x = respondent_wall_type, y = percent, fill = respondent_wall_type)) +
  geom_col(position = "dodge") +
  facet_wrap(~ village) +
  labs(
    title = "Proportion of wall type by village",
    x = "Wall type",
    y = "Percent") +
  theme(
    axis.text.x = element_blank(),
    #axis.text.x = element_text(angle = 45, hjust = 1, vjust = 1),
    legend.position = "none",
    axis.ticks.x = element_blank()
  )



