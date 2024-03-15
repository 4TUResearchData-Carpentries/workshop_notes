
library(tidyverse)
library(here)

interviews <- read_csv(
  here("data", "SAFI_clean.csv"), 
  na = "NULL")

## select the village column
select( interviews , village  )

## select the village and the no_membrs column
select( interviews , village, no_membrs  )

## select the columns village and rooms and all columns in between 
interviews2 <- select( interviews , village:rooms )

##nselect the columns staring with 'no_'
interviews2 <- select( interviews , starts_with('no_')  ) 


## filter function

## select interviews conducted in Ruaca
interviews3 <- filter( interviews , village == 'Ruaca' )
interviews3 <- filter( interviews , village == 'Ruaca' & no_membrs > 4 ) 

# select columns and rows
interviews2 <- select( interviews , village:rooms )
interviews3 <- filter( interviews2 , village == 'Ruaca' & no_membrs > 4 ) 

## doing the same with pipes

interviews3 <- select( interviews , village:rooms ) %>%
  filter( village == 'Ruaca' )

exercise1 <- filter( interviews , memb_assoc == 'yes' ) %>%
  select( affect_conflicts, liv_count , no_meals, memb_assoc )

## add a new column with the result of a calculations
interviews4 <- mutate( interviews , no_portions = no_membrs * no_meals )

interviews4 <- mutate( interviews , 
                       people_per_room = no_membrs / rooms )
## Exercise 2 on mutate

# Contains only the ‘village’ column and a new
# column called ‘total_meals’. 
# final dataframe should only contain the rows where ‘total_meals’ is greater than 20.

exercise2 <- mutate( interviews , total_meals = no_meals * no_membrs ) %>%
  select( village , total_meals ) %>%
  filter( total_meals > 20 )


## Summarise

## mean
interviews6 <- summarise( interviews , avg_rooms = mean( rooms ) )

## standard deviation
interviews6 <- summarise( interviews, st_dev = sd(rooms) )

## Group by

interviews7 <- group_by( interviews , village ) %>%
  summarise( st_dev = sd(rooms))

## count

interviews7 <- group_by( interviews, village ) %>%
  summarise( no_interviews = n() )

interviews8 <- count(interviews,village)

## exercise4 
exercise4 <- count( interviews , no_meals )

write_csv( interviews8 , here('data', 'no_interviews.csv') )

## Make a data frame in the wide format

column1 <- c('Ruaca','God','Choridzo')
column2 <- c( 4 , 5, 6 )
column3 <- c( 8 , 10, 12 )
column4 <- c( 5 , 32, 8 )

wide_data <- tibble( `village`=column1 , 
                     `2016-11-17`=column2 , 
                     `2016-11-18`=column3, 
                     `2016-11-19`=column4 )

long_data <- pivot_longer( wide_data, 
                           cols = `2016-11-17`:`2016-11-19` , 
                           names_to = 'date' , 
                           values_to = 'nr_interviews' )


interviews_plotting <- interviews %>%
  ## pivot wider by items_owned
  separate_longer_delim(items_owned, delim = ";") %>%
  ## if there were no items listed, changing NA to no_listed_items
  replace_na(list(items_owned = "no_listed_items")) %>%
  mutate(items_owned_logical = TRUE) %>%
  pivot_wider(names_from = items_owned,
              values_from = items_owned_logical,
              values_fill = list(items_owned_logical = FALSE)) %>%
  ## pivot wider by months_lack_food
  separate_longer_delim(months_lack_food, delim = ";") %>%
  mutate(months_lack_food_logical = TRUE) %>%
  pivot_wider(names_from = months_lack_food,
              values_from = months_lack_food_logical,
              values_fill = list(months_lack_food_logical = FALSE)) %>%
  ## add some summary columns
  mutate(number_months_lack_food = rowSums(select(., Jan:May))) %>%
  mutate(number_items = rowSums(select(., bicycle:car)))

write_csv( interviews_plotting, here('data_output','interviews_plotting.csv') )
