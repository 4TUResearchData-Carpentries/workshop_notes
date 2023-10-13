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
interviews[1,6]
# both return a tibble

interviews[[2]]

interviews[c(1,2,3),5]
interviews[1:3, 5] # first 3 rows of 5th column

interviews[2,] # 2nd row, all columns
interviews[1:6,] # first 6 rows, all columns
interviews[,1:3] # all rows, first 3 columns

interviews[,-2] # everything except second column
interviews[-c(7:131), ] # everything except rows 7 to 131

mean(interviews[[1]]) # works
mean(interviews[,1]) # doesn't

interviews["village"] # village column as tibble
interviews[,"village"] # same
interviews[["village"]] # village as vector
interviews$years_liv # years_liv column as vector
interviews$village
