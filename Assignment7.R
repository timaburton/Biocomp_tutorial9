# Script for Assignment 7

## Replicating the 'head' function
# Create a variable for the file of interest
dat <- read.csv(file = "file", header = TRUE, sep = ",", stringsAsFactors = FALSE)
# Create a variable for the rows of interest
linesreturned <- dat[1:x,]
# Example: returning the first 6 lines of the 'iris.csv' file
dat <- read.csv(file = "iris.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
linesreturned <- dat[1:6,]
linesreturned

## Working with data from 'iris.csv' file
setwd[~/Desktop/Biocomputing/Biocomp_tutorial9]
iris <- read.csv(file = "iris.csv", header = FALSE)

# Printing last 2 rows in the last 2 columns
iris[150:151,4:5]

# Getting the number of observations for each species
setosas <- length(grep('setosa',iris$V5))
setosas
versicolors <- length(grep('versicolor',iris$V5))
versicolors
virginicas<- length(grep('virginica',iris$V5))
virginicas

# Getting the rows with Sepal.Width > 3.5
dat[, 2] <- as.numeric(as.character( dat[, 2] ))
dat[(dat[,2]>3.5),]

# Writing the data for the species setosa to a file named 'setosa.csv'
write.csv(iris[2:51,], 'setosa.csv')

# Calculating mean, minimum, and maximum of Petal.Length for observations from virginica
virginica <- iris[102:151,]
virginica[, 3] <- as.numeric(as.character( virginica[, 3] ))
virginicamean <- mean(virginica$V3)
virginicamean
virginicamin <- min(virginica$V3)
virginicamin
virginicamax <- max(virginica$V3)
virginicamax