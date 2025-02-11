

## load the packages

library(tidyverse)
library(here)

interviews <- read_csv( here("data","SAFI_clean.csv") , na="NULL" )

select( interviews , village )
select( interviews , village, no_membrs , rooms )
interviews2 <- select( interviews , village:memb_assoc )
