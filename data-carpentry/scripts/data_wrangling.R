

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



