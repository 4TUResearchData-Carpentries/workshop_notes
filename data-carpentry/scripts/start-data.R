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
glimpse(interviews) #returns the number of columns and rows of the tibble, the names and class of each column, and previews as many values will fit on the screen

interviews[1,1] #first element in the first column of the tibble
interviews[1,6] #first element in the 6th column of the tibble
interviews[[1]] #first column of the tibble (as a vector)
interviews[1] #first column of the tibble
interviews[1:3,7] #first three elements in the 7th column of the tibble

interviews[3,] #the 3rd row of the tibble

head_interviews <- interviews[1:6,] #the first 6 rows of the tibble
head_interviews
