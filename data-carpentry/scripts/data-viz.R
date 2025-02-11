
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

## boxplot

interviews_plotting %>%
  ggplot( aes(x=village, y=rooms)) +
  geom_boxplot()


interviews_plotting %>%
  ggplot( aes(x=village, y=rooms)) +
  geom_boxplot() +
  geom_jitter(height=0.2, width=0.2)

# Exercise 2

interviews_plotting %>%
  ggplot( aes(x=village, y=rooms)) +
  geom_violin() +
  geom_jitter(height=0.2, width=0.2)

## bar plot

interviews_plotting %>%
  ggplot( aes(x= respondent_wall_type )) +
  geom_bar()

## colour for the bars
interviews_plotting %>%
  ggplot( aes(x= respondent_wall_type )) +
  geom_bar(fill='purple')

## A stacked bar chart
interviews_plotting %>%
  ggplot( aes(x= respondent_wall_type, fill=village)) +
  geom_bar()

## Side-by-side bars
interviews_plotting %>%
  ggplot( aes(x= respondent_wall_type, fill=village)) +
  geom_bar( position = 'dodge')


## Annotate your graph using lab()
interviews_plotting %>%
  ggplot( aes(x= respondent_wall_type, fill=village)) +
  geom_bar( position = 'dodge') +
  labs( x = 'Wall types' ,
        y = 'Number of observations',
        title = 'Number of wall types by city' )

# Exercise 3
interviews_plotting %>%
  ggplot( aes( x = memb_assoc )) +
  geom_bar()

