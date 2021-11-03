### Exercise 7 - Early Days of R

## Problem 1
## Write R code that replicates the functionality of the head function

# define variable using data file
allLines<-read.table("file",header=TRUE,sep=",",stringsAsFactors=FALSE)
# define variable for number of lines to be returned from top of data file
returnLines<-allLines[1:n,]
# Testing my code: Returning first 8 lines from wages.csv
allLines<-read.table("wages.csv",header=TRUE,sep=",",stringsAsFactors=FALSE)
returnLines<-allLines[1:8,]
returnLines

## Problem 2
## Load data from iris.csv and write R code to complete the five following tasks:
iris<-read.table("iris.csv",header=TRUE,sep=",",stringsAsFactors=FALSE)

# Print the last 2 rows in the last to columns
dim(iris)
iris[149:150,4:5]

# Get the number of observations for each species in the data set
orderedSpecies<-iris[order(iris$Species, decreasing=TRUE),]
sum(orderedSpecies$Species=="virginica")
sum(orderedSpecies$Species=="versicolor")
sum(orderedSpecies$Species=="setosa")

# Get rows with Sepal.Width > 3.5
sepalWidth<-iris[,2]
iris[sepalWidth>3.5,]

# Write the data for setosa to a comma-delimited file 'setosa.csv'
species<-iris[,5]
setosa<-iris[species=="setosa",]
write.table(x=setosa,file="setosa.csv",row.names=FALSE,col.names=TRUE,sep=",")  

# Calc mean, min, and max of Petal.Length for observations in virginica
virginica<-iris[species=="virginica",]
virginicaPetalLength<-virginica[,3]
mean(virginicaPetalLength)
min(virginicaPetalLength)
max(virginicaPetalLength)
