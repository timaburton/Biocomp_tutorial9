
#Exercise 7 problem 1

#set working directory
setwd("~/Desktop/Biocomp_tutorial9-main")

#define wages variable with wages.csv file and define lines variable with number of lines you want to return
wages<-read.table("wages.csv", header=TRUE, sep=",")
lines=5

fivelines<-wages[1:lines, ]
fivelines

#Exercise 7 problem 2

iris<-read.table("iris.csv",header=TRUE,sep=",")

#print the last 2 rows in the last 2 columns to the R terminal
iris[149:150,4:5]

#get the number of observations for each species included in the data set
sumspecies<-iris[order(iris$Species, decreasing=TRUE),]
sum(sumspecies$Species=="virginica")
sum(sumspecies$Species=="versicolor")
sum(sumspecies$Species=="setosa")

#get rows with Sepal.Width > 3.5
sw<-(iris[iris$Sepal.Width>3.5,])
sw

#write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa<-subset(iris, Species=="setosa")
write.csv(setosa, file="setosa.csv", row.names=FALSE)

#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
v=iris[iris$Species=="virginica",]
mean(v$Petal.Length)
max(v$Petal.Length)
min(v$Petal.Length) 