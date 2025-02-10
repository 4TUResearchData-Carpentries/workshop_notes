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


# Factors -----------------------------------------------------------------

# character vector
respondent_floor_type <- c("earth", "cement", "cement", "earth")
# factor
respondent_floor_type <- factor(c("earth", "cement", "cement", "earth"))

levels(respondent_floor_type)
nlevels(respondent_floor_type)

respondent_floor_type <- factor(
  respondent_floor_type,
  levels = c("earth", "cement")
)
levels(respondent_floor_type)

# recoding factors
# recode all instances of cement to brick
respondent_floor_type <- fct_recode(
  respondent_floor_type,
  brick = "cement"
)
levels(respondent_floor_type)

# ordered factor

respondent_floor_type <- factor(respondent_floor_type, ordered = TRUE)

# convert back to a character vector
as.character(respondent_floor_type)

# Numeric factors
year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
as.numeric(year_fct)
as.numeric(as.character(year_fct))
as.numeric(levels(year_fct))[year_fct]

# convert the memb_assoc variable to a factor
memb_assoc <- as.factor(interviews$memb_assoc)










