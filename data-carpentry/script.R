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
