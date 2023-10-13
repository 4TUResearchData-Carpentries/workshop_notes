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

# Inspecting data frame

dim(interviews) # dimensions
nrow(interviews) # number of rows
ncol(interviews) # number of columns
tail(interviews) # last 6 rows
names(interviews) # names of columns
str(interviews) # structure of data
summary(interviews) # summary stats


# Subsetting data frames --------------------------------------------------

interviews[1,1] # index first row and first column, respectively



