# Sarah Stevens
# sarah.stevens@wisc.edu
# Data Carpentry Workshop
# Starting with Data in R
# 2021-01-22

# downloading the data file
download.file(url="https://ndownloader.figshare.com/files/2292169",
              destfile="Data/Raw/portal_data_joined.csv")


# install tidyverse
install.packages("tidyverse")
library(tidyverse)

surveys <- read_csv("Data/Raw/portal_data_joined.csv")

head(surveys)
View(surveys)

str(surveys)

# subsetting a data frames

surveys[1, 6] # first item of 6th column
surveys[, 1] # first column of df
surveys[1:3, 6] # first 3 items of the 6th column
surveys[3, ] # third row of df

surveys[, -1]
surveys[-(7:34786), ]

surveys["species_id"]
surveys$species_id

# Challenge

# 1. Create a data.frame (surveys_200) containing only the data in row 200 of the surveys dataset.

(surveys_200 <- surveys[200,])

# 2. Notice how nrow() gave you the number of rows in a data.frame? Hint: You are using surveys again in this one.
nrow(surveys)
#  - Use that number to pull out just that last row in the data frame.
surveys[34786,]
# - Compare that with what you see as the last row using tail() to make sure it's meeting expectations.
tail(surveys)
# - Pull out that last row using nrow() instead of the row number.
surveys[nrow(surveys),]
# - Create a new data frame (surveys_last) from that last row.
surveys_last <- surveys[nrow(surveys),]

# 3. Use nrow() to extract the row that is in the middle of the data frame. Store the content of this row in an object named surveys_middle.

surveys_middle <- surveys[nrow(surveys)/2, ]


