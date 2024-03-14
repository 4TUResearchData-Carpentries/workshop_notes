library(tidyverse)
library(here)


interviews <- read_csv(here("data/SAFI_clean.csv"))

interviews

#Size of data frame
head(interviews) #show the first six rows
