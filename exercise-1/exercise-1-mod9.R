# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
points <- c(25,31,24,10,40,5,26,31,31,20,6,26,27,37,3,12)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
points.against <- c(23,34,3,38,7,14,15,24,25,25,6,24,17,18,9,10)

# Combine your two vectors into a dataframe
games <- data.frame(points, points.against)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
games$diff <- games$points - games$points.against


# Create a new column "won" which is TRUE if the Seahawks won
games$won <- games$diff > 0
# Create a vector of the opponent names corresponding to the games played
opponents <- c("49ers", "Cardinals",	"Rams", "Packers",	"Panthers",	"Buccaneers",	"Eagles",	"Patriots","Bills",	"Saints","Cardinals",	"Falcons",	"Jets"	,"49ers"	,"Rams"	, "Dolphins")
opponents
# Assign your dataframe rownames of their opponents
#rownames(games) <- opponents
rownames(games) <- make.names(opponents, unique = TRUE)
View(games)

# View your data frame to see how it has changed!
