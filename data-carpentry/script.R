dir.create("data")
dir.create("data_output")
dir.create("fig_output")
# this is a comment

# Introduction to R
3 + 5
12 / 7
pi
area_hectares <- 1.0
area_hectares
area_hectares <- 2.0
area_hectares 
1.0 -> area_hectares  # possible but uncommon
(area_hectares <- 1.0)  # assign and print at once
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
round_pi <- round(pi)
(round_pi <- round(pi))
rounded_number <- round(45732.2876743)
round
round()
round(x=pi)
(round(x=pi, digits=2))
args(round)
help(round)
round(digits=3, x=pi)

# vectors and data types

hh_members <- c(3, 7, 10, 6)
hh_members
length(hh_members)

respondent_wall_type <- c("muddaub", "burntbricks", "sunbricks")
respondent_wall_type
length(respondent_wall_type)

class(hh_members)
typeof(hh_members)
class(respondent_wall_type)
typeof(respondent_wall_type)

possession <- c("bicyle", "radio", "television")
possession
possession <- c( possession, "mobile phone")
possession

num_char <- c(1, 2, 3, "a")
num_char
class(num_char)

num_char[1]
num_char[4]
num_char[c(2,3)]

possession[c(2,3)]
possession[c(2,3,1,3,4,2,4,1,2,4)]

hh_members
hh_members[c(TRUE, FALSE, TRUE, TRUE)]

3 > 5
5 > 3
5 == 3
5 != 3

hh_members
hh_members == 7
hh_members[hh_members == 7]
hh_members[hh_members < 7]

# Missing values
