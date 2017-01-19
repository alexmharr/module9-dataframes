# Exercise 6: Husky Football 2015 Season
# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`
husky.games.2015 <- read.csv("data/huskies_2015.csv", stringsAsFactors = FALSE)


# Create a vector of the teams that the Huskies played against during that season
opponents <- c(husky.games.2015[ , 2])

# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.scores <- c(husky.games.2015[ ,3])

# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards <- husky.games.2015[ , 6]
passing.yards <- husky.games.2015[ , 5]

# Create a variable called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards <- rushing.yards + passing.yards


# Add the `combined.yards` vector to the dataframe with the column name being `combined`
husky.games.2015$combined <- combined.yards 


# Write the dataframe to a new `.csv` file called `huskies_2015_improved.csv` into the `data directory`
write.csv(husky.games.2015, file = "huskies_2015_improved.csv")


# What is the score of the game where the Huskies had the most combined yards?
husky.scores[combined.yards == max(combined.yards)]


# Define a function `MostYardsScore` that takes in an argument `games` (a data frame) and
# returns a descriptive sentence about the game that was played that had the most yards scored in it.



# Challenge!
# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable