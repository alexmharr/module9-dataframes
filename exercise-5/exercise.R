# Exercise 5: Popular Baby Names Over Time

# Read in the female baby names .csv file into a variable called `female.names`
# Remember to not load the strings as factors!
female.names <- read.csv("data/female_names.csv", stringsAsFactors = FALSE)

# Create a vector `years` as the year column of the dataset
years <- c(female.names$year)

# Create a vector `names` as the name column of the datset
names <- c(female.names$name)
# Create a vector `props` as the proportion column of the dataset
props <- c(female.names$prop)

# Create a vector `names.2013` as your names vector where your years vector is 2013
names.2013 <- names[years == 2013]
# Create a vector `prop.2013` as the your props vector where your years vecctor is 2013
prop.2013 <- props[years == 2013]

# What was the most popular female name in 2013?
m.pop <- names.2013[prop.2013 == max(prop.2013)]

# Write a funciton `most.popular` that takes in a value `my.year`, and returns
# a sentence stating the most popular name in that year. Note how you had to make intermediary variables above.
MostPopular <- function(my.year) {
  temp.name <- names[years == my.year]
  temp.prop <- props[years == my.year]
  return(temp.name[temp.prop == max(temp.prop)])
}

# What was the most popular female name in 1994?
MostPopular(1994)

### Bonus ###

# Write a function `how.popular` that takes in a name and a year, and returns
# a sentence with how popular that name was in that year
HowPopular <- function(name, year) {
  temp.name <- names[years == year]
  temp.prop <- props[years == year]
  popular <- temp.prop[temp.name == name]
  return(paste(name, "Was this popular", popular))
}

# How popular was the name 'Laura' in 1995?
#how.popular("Laura", 1995)
HowPopular("Laura", 1995)
