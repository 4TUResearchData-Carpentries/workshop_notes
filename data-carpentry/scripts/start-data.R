# Load required packages
library(tidyverse)
library(here)

interviews <- read_csv(here("data/SAFI_clean.csv"), na = "NULL")

view(interviews)
head(interviews)
tail(interviews)
class(interviews)
dim(interviews) # dimenisons (rows and columns)
nrow(interviews)
ncol(interviews)
str(interviews)
summary(interviews)

# Subsetting data frames --------------------------------------------------

interviews[1, 3] # subset first row, third column
interviews[[3]] # subset third column as vector
interviews[3]
interviews[1:4, 3]
interviews[c(1,3,4), 3]
interviews[3, ] # output as tibble
interviews[, 3]
interviews[, -1]
interviews[-c(1,3,4), ] # subset everything EXCEPT rows 1, 3, and 4
interviews["village"] # name of variable to subset as tibble
interviews[, c("village", "no_meals")] # subset the village and no_meals variable
interviews[["village"]] # output as vector
interviews$respondent_wall_type[1:3] # subset the first 3 elements of the respondent_wall_type variable

## Exercise 1

interviews_100 <- interviews[100,] # subset row number 100
nrow(interviews) # get the number of rows in the interviews data frame
interviews[131,] # subset the last row
interviews[nrow(interviews), ] # a better way to subset the last row
interviews[median(1:nrow(interviews)), ] # subset the middle row
interviews[-c(7:nrow(interviews)), ] # subset the first 6 rows

