
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

interviews4$new_column <- 0
interviews4 <- mutate( interviews , no_portions = no_membrs * no_meals )
