# If you need to download the file, uncomment the code from lines 3-6

#download.file(
#  "https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv",
#  "data/SAFI_clean.csv", mode = "wb"
#)

# load packages
library(here)
library(tidyverse)

# loading data
interviews <- read_csv(here("data/SAFI_clean.csv"), na = "NULL")
interviews

view(interviews)
head(interviews, n = 20)
class(interviews)



