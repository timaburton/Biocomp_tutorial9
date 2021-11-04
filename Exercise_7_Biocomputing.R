###            Exercise 7 - Early Days of R             ###
###   Written by Nicholas Ross - Biocomputing Fall 2021 ###

###      1 - using head type functionality in R         ###

# read in file and create variable to read in top 5 lines of the file
irisTab <- read.csv(file = 'iris.csv', header = T, stringsAsFactors = F)
topFive <- irisTab[1:5,]
print(topFive)


###      2 - Using 'iris.csv' file to practice R        ###

# as a note, I'm refraining from inputting code below to load the data
# this was already done above avoiding the need to do so again

## FIRST BULLET - print the last 2 rows in the last 2 columns 
lastTwoRows <- tail(irisTab, 2)
lastTwoCols <- lastTwoRows[,4:5]
print(lastTwoCols)

## SECOND BULLET- get the number of observations for each species included in data set
# use unique to see what species are included
# this step can be excluded if user already knows the species in the file
unique(irisTab$Species)

## first get the setosa observations
setosaObservations <- sum(irisTab$Species == "setosa")
sprintf("The number of setosa observations is %s", setosaObservations)

## second obtain the versicolor observations
versicolorObservations <- sum(irisTab$Species == "versicolor")
sprintf("The number of versicolor observations is %s", versicolorObservations)

## finally obtain the virginica observations
virginicaObservations <- sum(irisTab$Species == "virginica")
sprintf("The number of virginica observations is %s", virginicaObservations)

## THIRD BULLET - get rows with Sepal.Width > 3.5
subset(irisTab, Sepal.Width > 3.5)

## FOURTH BULLET - write th data for the setosa species to its own .csv file
setosa <- subset(irisTab, Species == "setosa")
write.csv(setosa, file= "setosa.csv", row.names = FALSE)
# to prove the code works run the following line
read.csv("setosa.csv", header = T, stringsAsFactors = F )

## FIFTH BULLET - find mean, min, and max of petal length for virginica species
virginica <- subset(irisTab, Species == "virginica")
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)
