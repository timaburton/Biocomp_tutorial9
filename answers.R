#challenge 1
#codes that replicates the functionality of the head function. This code will return the first x lines of file "wages.csv"
wages = read.csv(file = "wages.csv", header = TRUE)
x <- 10 #x is the number of rows that will be shown in results; replace 10 by any row numbers for other results
wages[1:x,] #return the first 10 lines of file "wages.csv"

#challenge 2
#load file
read.csv(file = "iris.csv", header = TRUE)

#1. print the last 2 rows in the last 2 columns to the R terminal
tail(iris[tail(ncol(iris)-1):ncol(iris)], 2)

#2. get the number of observations for each species included in the data set
unique(iris$Species)
length(which(iris$Species == 'setosa'))
length(which(iris$Species == 'versicolor'))
length(which(iris$Species == 'virginica'))

#3. get rows with Sepal.Width > 3.5
iris[iris$Sepal.Width > 3.5,]

#4. write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa <- iris[iris$Species == "setosa",]
write.table(x=setosa,file="setosa.csv", row.name=FALSE,col.names = TRUE, sep = ",")

#5. calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica = iris[iris$Species == "virginica",]
mean(virginica$Petal.Length)
max(virginica$Petal.Length)
min(virginica$Petal.Length)