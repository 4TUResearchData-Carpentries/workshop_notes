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


