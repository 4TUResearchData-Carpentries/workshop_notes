
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
interviews3 <- filter( interviews2 , village == 'Ruaca' & no_membrs > 4 ) 


