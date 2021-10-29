###Exercise 7 Script 
###Marlee Shaffer

setwd("~/Desktop/Biocomp_tutorial9")
iris<-read.csv("iris.csv")

##Part 1: Replicate the functionality fo the head function in bash 



#Part 2: Use iris.csv to: 

#Print the last 2 rows and the last two columns to the R terminal

#Get the number of observations for each species in the data set

#Get rows with Sepal.Width > 3.5
rowcount<- funtion(x,y,z){width<- (x[y>z,])return(width)}
row(iris, iris$Sepal.Width, 3.5)

#Write the data for species setosa to a comma-deliminated file named 'setosa.csv'

#Calculate the mean, minimum, and maximum of Petal.Length for observations from virginica