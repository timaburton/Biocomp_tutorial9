###Exercise 7 Script 
###Marlee Shaffer

setwd("~/Desktop/Biocomp_tutorial9")
iris<-read.csv("iris.csv")

##Part 1: Replicate the functionality fo the head function in bash 



#Part 2: Use iris.csv to: 

#Print the last 2 rows and the last two columns to the R terminal

#Get the number of observations for each species in the data set
sum(iris[,5]=="virginica")
sum(iris[,5]=="setosa")
sum(iris[,5]=="versicolor")

#Get rows with Sepal.Width > 3.5

#Write the data for species setosa to a comma-deliminated file named 'setosa.csv'
setosa<-(iris[iris $"Species"=="setosa",])
write.csv(setosa, 'setosa.csv')

#Calculate the mean, minimum, and maximum of Petal.Length for observations from virginica