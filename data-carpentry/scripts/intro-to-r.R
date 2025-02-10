dir.create("data")
dir.create("fig_output")
dir.create("scripts")

## Introduction to R

# Downloading data
# We are going to directly download the data from the Figshare repository
download.file("https://ndownloader.figshare.com/files/11492171",
              "data/SAFI_clean.csv", mode = "wb")
?download.file

### Installing packages
install.packages("tidyverse")
install.packages("here")

# R as a calculator
2 + 16
123 / 56

area_hectares <- 1.0 # assign 1.0 to an object called area_hectares
area_hectares # typing the name of the object it prints the value

2.47 * area_hectares # convert area into acres
area_hectares <- 10 # change the value of area_hectares
2.47 * area_hectares # convert into acres again

area_acres <- 2.47 * area_hectares # store area in acres in a new object

area_hectares <- 50

## EXERCISE 1
r_length <- 10
r_width <- 20
r_area <- r_length * r_width
r_area

# Functions
round(3.14159) # run the round() function with pi as an argument
round(pi) # R knows pi
args(round) # show the arguments of the round() function
?round # show Help for the round() function
round(3.14159, digits = 2) # round pi to 2 decimal points using the digits argument
round(3.14159, 2) # we can remove the name of the argument when exactly using the same order
round(digits = 2, x = 3.14159) # we can switch the order if we name the arguments

## EXERCISE 2
floor(1.624)

# Vectors and data types
hh_members <- c(3, 7, 10, 6) # using the c() we create a vector of 4 numbers
hh_members
respondent_wall_type <- c("cement", "brick", "wood") # create a vector of 3 character elements
respondent_wall_type

length(hh_members) # return the number of elements in the hh_members vector
