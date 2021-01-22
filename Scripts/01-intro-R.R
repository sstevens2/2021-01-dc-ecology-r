# Sarah Stevens
# sarah.stevens@wisc.edu
# Intro to R
# 2021-01-22

3 + 5
12 / 7

weight_kg <- 55
2.2 * weight_kg

weight_kg <- 57.5

weight_lb <- 2.2* weight_kg

weight_kg <- 100

weight_lb <- 2.2 * weight_kg

# Challenge

#What are the values after each statement in the following?
mass = 47.5            # mass?
age  <- 122             # age?
mass <- mass * 2.0      # mass?
age  <- age - 20        # age?
mass_index <- mass/age  # mass_index?

32 - my_fav_numb

round(3.14159)

args(round)
?round

round(3.14159, digits = 2)
round(3.14159, 2)

round(digits=2, x=3.14159)
round(2, 3.14159)

# Creating vectors

(weight_g <- c(50, 60, 65, 82))

animals <- c("mouse", "rat", "dog")

num_animals <- length(animals)
num_weights <- length(weight_g)
num_animals * num_weights

class(animals)
class(weight_g)

str(weight_g)

weight_g <- c(weight_g, 90)
weight_g <- c(30, weight_g)

#Challenge

# What will happen in each of these examples? (hint: use class() to check the data type of your objects):

num_char <- c(1, 2, 3, "a")
num_logical <- c(1, 2, 3, TRUE)
char_logical <- c("a", "b", "c", TRUE)
tricky <- c(1, 2, 3, "4")

class(num_char)
class(num_logical)
class(char_logical)
class(tricky)

# Subsetting vectors

animals <- c("mouse", "rat", "dog", "cat")
animals[2]

animals[c(3, 2)]

animals[c(1, 2, 3, 2, 1, 4)]

weight_g <- c(21, 43, 39, 54, 55)

weight_g > 50

weight_g[weight_g > 50]

weight_g[weight_g > 30 & weight_g < 50]

weight_g[weight_g <= 30 | weight_g == 55]

animals <- c("mouse", "rat", "dog", "cat", "cat")

animals[animals == "cat" | animals == "rat"]

animals_to_keep <- animals %in% c("rat", "cat", "dog", "duck", "goat")
animals[animals_to_keep]

# Working with missing data

heights <- c(2, 4, 5, NA, 6)
mean(heights)
max(heights)
mean(heights, na.rm=TRUE)
max(heights, na.rm=TRUE)


heights[!is.na(heights)]

# Challenge

# 1. Using this vector of heights in inches, create a new vector, heights_no_na, with the NAs removed.

heights <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)
heights_no_na <- heights[!is.na(heights)]

# 2. Use the function median() to calculate the median of the heights vector.

median(heights, na.rm=TRUE)

# 3. Use R to figure out how many people in the set are taller than 67 inches.

heights_abv_67 <- heights_no_na[heights_no_na > 67]
length(heights_abv_67)
