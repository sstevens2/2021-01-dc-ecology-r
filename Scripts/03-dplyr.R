# Sarah Stevens
# sarah.stevens@wisc.edu
# Data Carpentry
# 2021-01-22
# learning dplyr

library(tidyverse)

surveys <- read_csv("Data/Raw/portal_data_joined.csv")

# select columns of the dataframe
select(surveys, plot_id, species_id, weight)
select(surveys, -record_id, -species_id)

# select rows based on criteria

filter(surveys, year == 1995)

# Putting together more than one function
select(filter(surveys, weight < 5), species_id, sex, weight)

surveys_sml <- surveys %>% # shortcut is cmd/ctrl-shift-m
  filter(weight < 5) %>% 
  select(species_id, sex, weight)


surveys %>% 
  mutate(weight_kg = weight / 1000) %>% 
  select(weight, weight_kg) %>% 
  tail()

surveys_w_kg <- mutate(surveys, weight_kg = weight / 100)
surveys_w_kg_weight <- select(surveys_w_kg, weight, weight_kg)
tail(surveys_w_kg_weight)

surveys %>% 
  mutate(weight_kg = weight / 1000,
         weight_lb = weight_kg * 2.2) %>% 
  select(weight, weight_kg, weight_lb) %>% 
  tail()

# Challenge

#Create a new data frame from the surveys data that meets the following criteria: 
#  - contains only the species_id column and a new column called hindfoot_cm 
# - hindfoot_cm contains the hindfoot_length values converted to centimeters
# - In this hindfoot_cm column, there are no NAs and all values are less than 3.


surveys_hindfood_cm <- surveys %>% 
  mutate(hindfoot_cm = hindfoot_length / 10) %>% 
  filter(!is.na(hindfoot_cm), hindfoot_cm < 3) %>% 
  select(species_id, hindfoot_cm)








