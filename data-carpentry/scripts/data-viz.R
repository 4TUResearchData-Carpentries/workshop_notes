
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
  geom_point(alpha=0.5, colour = 'red')

# Create a jitterplot
interviews_plotting %>%
  ggplot(aes(x=no_membrs,y=number_items)) +
  geom_jitter(alpha=0.5,
              colour = 'red' ,
              height = 0.15 ,
              width = 0.15 )

# vary colour along with village
interviews_plotting %>%
  ggplot(aes(x=no_membrs,y=number_items,colour=village)) +
  geom_jitter(alpha=0.5,
              height = 0.15 ,
              width = 0.15 ) +
  scale_colour_manual( values = c('red','green','blue')  )

# Exercise 1

interviews_plotting %>%
  ggplot( aes( x=rooms, y = village, colour = respondent_wall_type) ) +
  geom_point()




