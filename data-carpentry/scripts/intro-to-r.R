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
