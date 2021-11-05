#navigate to working directory 
setwd('/Users/erinlewis/Desktop/Biocomp_tutorial9/')

#1. Write R code that replicates the functionality of the head function we used in bash.

#define a variable with the file to return lines from
exampleFile <- read.csv(file = 'wages.csv')
#wages.csv is used as a test file in this case, any file could be inserted

#define a variable representing the number of lines to be returned from the top of the indicated file. 
n <- seq(1:10)
#in this case, just had n be the typical amount read by bash head function, could be changed

#replicate bash function using variables
exampleFile[n, ]



## 2. Load the data contained in the provided ‘iris.csv’ file and write R code to do the following things:
data <- read.table(file="iris.csv",header=TRUE, sep=",")

##print the last 2 rows in the last 2 columns to the R terminal
tail(data, n= c(2,2)) 

##get the number of observations for each species included in the data set
unique(data$Species)
#setosa
nrow(data[data$Species=="setosa",])
#versicolor
nrow(data[data$Species=="versicolor",])
#virginica
nrow(data[data$Species=="virginica",])

##get rows with Sepal.Width > 3.5
data[data[,2]>3.5,]

##write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
write.table(x = data[data$Species=="setosa",], file="setosa.csv",sep=",",col.names=TRUE)

##calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
uniquePlant<-data[data$Species=="virginica",]
sortedPlant<-sort(x=uniquePlant$Petal.Length,decreasing = FALSE)
#mean
mean(uniquePlant$Petal.Length,)
#minimum
sortedPlant[1]
#maximum
tail(sortedPlant, n=1)