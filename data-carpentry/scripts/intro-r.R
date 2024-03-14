#download.file("https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv", "data/SAFI_clean.csv", mode = "wb")


# R Basics ----------------------------------------------------------------

# land area in hectares
area_hectares <- 1.0

area_hectares * 2.47 

area_hectares <- 2.5 # change value of area

area_hectares * 2.47

area_acres <- 2.47 * area_hectares

area_hectares <- 50

## Exercise 1

r_length <- 4
r_width <- 6
r_area <- r_width * r_length

#rm(r_length)

## BACK AT 10.35 ##


# Functions ---------------------------------------------------------------

# square root function
sqrt(12)

sqrt_area <- sqrt(area_acres) # store as an object

round(3.14159)

args(round) # find the arguments of the round function

?round

round(pi, digits = 4)

round(pi, 4)

round(digits = 4, x = pi)

## Exercise 2

# round 1.624 down to nearest integer
floor(1.624)

trunc(1.624)

# Data types --------------------------------------------------------------

# create a vector

hh_members <- c(3, 7, 10, 6)

respondent_wall_type <- c("muddaub", "burntbricks", "sunbricks")
respondent_wall_type

length(respondent_wall_type)
length(hh_members)

typeof(respondent_wall_type)
typeof(hh_members)

str(hh_members)
str(respondent_wall_type)

# vector manipulation

possessions <- c("bicycle", "radio", "television")

possessions <- c(possessions, "mobile_phone") # add to vector
possessions

possessions <- c("car", possessions)
possessions

# Exercise 3?

num_char <- c(1, 2, 3, "a")
num_logical <- c(1, 2L, 3, TRUE)
char_logical <- c("a", "b", "c", TRUE)
tricky <- c(1, 2, 3, "4")

class(hh_members)


# Subsetting vectors ------------------------------------------------------

respondent_wall_type[2]

respondent_wall_type[-2]

hh_members[c(TRUE, FALSE, FALSE, TRUE)]

hh_members > 5

hh_members[hh_members > 5]

hh_members[hh_members > 5 | hh_members < 5]

hh_members[hh_members > 5 & hh_members < 5]

respondent_wall_type[respondent_wall_type == "muddaub"]
