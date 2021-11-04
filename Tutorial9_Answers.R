# Tutorial 9, Exercise 7

# Problem 1

#Set working directory 
setwd("~/Desktop/Fall-2021/Biocomputing/Tutorial9/Biocomp_tutorial9")
#Define a variable with the file to return lines from 
exampleFile <- read.table("iris.csv",header=TRUE,sep=",")
#Define variable representing the number of lines to be returned from the top of the file (can be any number)
numLines = 8
#Select certain number of lines from the top of the file (use square bracket indexing)
results <- exampleFile[1:numLines, ]
#Print file content to terminal 
results

# Problem 2

# Load data from 'iris.csv'
irisFile <- read.table("iris.csv",header=TRUE,sep=",")
# Print the last two rows in the last two columns to the R terminal  
irisFile[149:150,4:5]
# Get the number of observations for each species in the data set 
sum(irisFile$Species=='setosa')
sum(irisFile$Species=='versicolor')
sum(irisFile$Species=='virginica') 
# Get rows with Sepal.Width > 3.5 
irisFile[irisFile$Sepal.Width>3.5,]
# Write the data for the species setosa to a comma-delimited file named 'setosa.csv'
setosaData<-irisFile[irisFile$Species=='setosa',]
write.csv(setosaData,file = 'setosa.csv',row.names=FALSE)
# Calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
mean(irisFile$Petal.Length[irisFile$Species=='virginica'])
min(irisFile$Petal.Length[irisFile$Species=='virginica'])
max(irisFile$Petal.Length[irisFile$Species=='virginica']) 

