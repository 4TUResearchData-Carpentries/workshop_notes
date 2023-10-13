# create the directory

dir.create("data")
dir.create("data_output")
dir.create("fig_output")

# this is a comment (not a command)

# INTRODUCTION TO R

# R works as a calculator
3 + 5
12 / 7
pi

# defining and printing (showing on screen) varaibles
area_hectares <- 1.0
area_hectares
area_hectares <- 2.0
area_hectares 
1.0 -> area_hectares  # possible but uncommon
(area_hectares <- 1.0)  # assign and print at once

# operations with variables
2.47 * area_hectares  # 
(area_acres <- area_hectares * 2.47)  #
area_hectares <- 50  #  

# exercise compute area of a rectangle
r_length <- 2
r_width <- 5
r_area <- r_length * r_width
r_area

# functions
round()
round(pi)

# functions and assignments
round_pi <- round(pi)
(round_pi <- round(pi))
rounded_number <- round(45732.2876743)

# the arguments of a function and the named arguments
round
round()
round(x=pi)
(round(x=pi, digits=2))
args(round)
help(round)
round(digits=3, x=pi)

# VECTORS AND DATA TYPES

# vectors of numbers
hh_members <- c(3, 7, 10, 6)
hh_members
length(hh_members)

# vectors of characters
respondent_wall_type <- c("muddaub", "burntbricks", "sunbricks")
respondent_wall_type
length(respondent_wall_type)

# class of vectors
class(hh_members)
typeof(hh_members)
class(respondent_wall_type)
typeof(respondent_wall_type)

# extending a vector
possession <- c("bicyle", "radio", "television")
possession
possession <- c( possession, "mobile phone")
possession

# vectors of items with mixed type
num_char <- c(1, 2, 3, "a")
num_char
class(num_char)

# selecting elements in a vector (subsetting)
num_char[1]
num_char[4]
num_char[c(2,3)]

possession[c(2,3)]  # fewer elements
possession[c(2,3,1,3,4,2,4,1,2,4)]  # create vectors with more elements

# logical vectors
hh_members
hh_members[c(TRUE, FALSE, TRUE, TRUE)]  # answer the question for each element: do I want to keep this?

# logical statements
3 > 5
5 > 3
5 == 3
5 != 3

# logical statements of a vector
hh_members
hh_members == 7

# subsetting a vector with logical statement based on the vector's values
hh_members[hh_members == 7]
hh_members[hh_members < 7]

# Missing values

# not available is a special feature in R
NA
class(NA)
NA + NA  # little arithmetic with NA
NA + 3  # NA spoils the calculation

rooms <- c(2, 1, 1, NA, 7)
rooms
max(rooms)

# one way to disregard NAs, if a function argument permits
args(max)
max(rooms, na.rm=TRUE)

# another way to disregard NAs: dedicated functions
is.na(NA)
is.na(4)
is.na(rooms)

# test
rooms_cleaned <- rooms[!is.na(rooms)]
max(rooms_cleaned)  
mean(rooms_cleaned)  

# end of Lesson 1; please revise the lesson material at https://datacarpentry.org/r-socialsci/01-intro-to-r.html
