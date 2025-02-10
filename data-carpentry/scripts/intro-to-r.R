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

