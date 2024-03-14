library(tidyverse)
library(here)


interviews <- read_csv(here("data/SAFI_clean.csv"))

interviews

#Size of data frame
head(interviews) #show the first six rows

dim(interviews) #dimensions
nrow(interviews) #rows
ncol(interviews) #columns

#content of data frame
head(interviews) #show the first 6 rows
tail(interviews) #Show the last 6 rows

#Names of columns
names(interviews)

#Data summaries
str(interviews) #structure of object and information about the class
summary(interviews) #summary statistics for each column
glimpse(interviews)
