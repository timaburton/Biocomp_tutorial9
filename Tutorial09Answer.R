## Problem 1

#define variable with a data file
allfile<-read.table("file",header=TRUE,sep=",",stringsAsFactors=FALSE)
#define variable for number of lines to be returned from the top of data1
returnlines<-allfile[1:n,]
#Test: output should return first 8 lines from wages.csv
allfile<-read.table("wages.csv",header=TRUE,sep=",",stringsAsFactors=FALSE)
returnlines<-allfile[1:8,]
returnlines

## Problem 2

## Load data from iris.csv 
iris<-read.table("iris.csv",header=TRUE,sep=",",stringsAsFactors=FALSE)

#Select last two rows in last two columns
output <- iris[, c(4,5)]
output
answer1 <- tail(output, n-2)
answer1

#get the number of observations for each species included in the data set
unique(iris$Species)
sum(iris$Species=="setosa")
sum(iris$Species=="versicolor")
sum(iris$Species=="virginica")

#get rows with Sepal.Width > 3.5
sepalwidth<-iris[,2]
answer3<-iris[sepalwidth>3.5,]

#write the data for the species setosa to a comma-delimited file names 'setosa.csv'
species<-iris[,5]
setosa=iris[species=="setosa",]
write.table(x=setosa,file="setosa.csv",row.names=FALSE,col.names=TRUE,sep=",")

#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica_data=iris[iris[,5]=="virginica",]
max(virginica_data$Petal.Length)
min(virginica_data$Petal.Length)
mean(virginica_data$Petal.Length)