

## load the packages

library(tidyverse)
library(here)

interviews <- read_csv( here("data","SAFI_clean.csv") , na="NULL" )

## we select specific columns
select( interviews , village )
select( interviews , village, no_membrs , rooms )
interviews2 <- select( interviews , village:memb_assoc )

## select columns starting with a certain string
interviews3 <- select( interviews, starts_with('no_'))

## Filter

interviews4 <- filter( interviews, village=='Ruaca' )
# test for multiple criteria
interviews4 <- filter( interviews, village=='Ruaca' & no_membrs > 5 )

interviews5 <- interviews %>%
  select( village:rooms ) %>%
  filter( village == 'Ruaca' )

# Exercise 1
exercise1 <- interviews %>%
  filter(memb_assoc=='yes') %>%
  select(affect_conflicts,liv_count,no_meals)

# Add a new column with the result of a calculation
interviews6 <- interviews %>%
  mutate( people_per_room = no_membrs / rooms )

interviews6 <- interviews %>%
  mutate( total_meals = no_meals * no_membrs )


# exercise2

exercise2 <- interviews %>%
  mutate( total_meals = no_meals * no_membrs ) %>%
  select( village, total_meals) %>%
  filter( total_meals > 20 )

## calculating the average number of rooms
interviews7 <- interviews %>%
  summarise( avg_rooms = mean(rooms) )

## calculate the average number of rooms PER VILLAGE

interviews7 <- interviews %>%
  group_by( village ) %>%
  summarise( avg_rooms = mean(rooms) )

# mean() for calculating the mean
# min() for the minimum
# sd() for standard deviation
# n() for doing a simple count

interviews8 <- interviews %>%
  group_by(village) %>%
  summarise( total_interviews = n())

## The exact same can be achieved using the following
interviews8 <- interviews %>%
  count(village)

excercise3 <- interviews %>%
  group_by(no_meals) %>%
  summarise( count_meals = n() )

exercise3 <- interviews %>%
  count(no_meals)

