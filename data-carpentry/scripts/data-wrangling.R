## load the tidyverse
library(tidyverse)
library(here)

# If you haven't downloaded the file:
#download.file("https://ndownloader.figshare.com/files/11492171",
#              "data/SAFI_clean.csv", mode = "wb")


# Assign data to the object
interviews <- read_csv(here("data", "SAFI_clean.csv"), na = "NULL")

# preview the data
# view(interviews)


# Subseting by columns ----------------------------------------------------

select(interviews, village, no_membrs, months_lack_food)

interviews[c("village", "no_membrs", "months_lack_food")]

#series of columns placed next to each other
select(interviews, village:respondent_wall_type)


# Subsetting by rows ------------------------------------------------------

filter(interviews, village == "Chirodzo")

# filtering with AND statement

filter(interviews, village == "Chirodzo" &
         rooms > 1 &
         no_meals >= 2)

# filtering with OR statement

filter(interviews, village == "Chirodzo" | 
         rooms > 1 |
         no_meals > 2 )



# Pipes -------------------------------------------------------------------

interviews_tmp <- filter(interviews, village == "Chirodzo")
interviews_ch <- select(interviews_tmp, village:respondent_wall_type)
interviews_ch

interviews_ch <- select(filter(interviews, village == "Chirodzo"),
                        village:respondent_wall_type)
interviews_ch


# Use pipes!
interviews_ch <- interviews %>%
  filter(village ==  "Chirodzo") %>%
  select(village:respondent_wall_type)

interviews_ch


#exercise 1

interviews %>%
  filter(memb_assoc == "yes") %>%
  select(affect_conflicts, liv_count, no_meals)

interviews %>%
  select(affect_conflicts, liv_count, no_meals)



# Create new columns with mutate ------------------------------------------

# average number of hh members per room

interviews2 <- interviews %>%
  mutate(people_per_room = no_membrs/rooms)


# filter out cases with missing values in memb_assoc

interviews2 <- interviews %>%
  filter(!is.na(memb_assoc)) %>%
  mutate( people_per_room = no_membrs /rooms)


# Exercise 2 

interviews4 <-interviews %>%
  mutate(total_meals = no_membrs * no_meals) %>%
  filter(total_meals > 20) %>%
  select(village, total_meals)

interviews4


#  split-apply combine with group_by --------------------------------------

# average hh size by village 
interviews %>%
  group_by(village) %>%
  summarize(mean_no_membrs = mean(no_membrs),
            min_membrs = min(no_membrs),
            max_rooms = max(rooms)
            ) 

# average hh size by village & membr assoc
interviews %>%
  group_by(village, memb_assoc) %>%
  summarize(mean_membrs = mean(no_membrs)) %>%
  filter(!is.na(memb_assoc)) %>%
  arrange(desc(mean_membrs))

# Exercise 3 

interviews %>%
  group_by(village) %>%
  summarize(mean_members= mean(no_membrs),
            min_members = min(no_membrs),
            max_members = max(no_membrs),
            count = n()
            )

interviews %>%
  count(village)


# pivotting with tidyr ----------------------------------------------------


