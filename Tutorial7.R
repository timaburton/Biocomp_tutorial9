#Question 1
setwd("C:/Users/megan/Desktop/shell-lesson-data/shell-lesson-data")
wage <- read.csv(file="wages.csv", header = TRUE, stringsAsFactors = FALSE)
#number of lines to be returned from the file
num <- 15
#variable with the file to return lines from
topOfFile <- wage[1:num,]
topOfFile

#Question 2
var <- read.csv(file='iris.csv', header = TRUE, stringsAsFactors = FALSE)
var
#last two rows of the last two columns
var[149:150,4:5]
#number of observations for each species
table(var$Species)
#rows with Sepal Width > 3.5
var[var$Sepal.Width > 3.5,]
#Add all data on setosa species into a new file
x <- var[var$Species=='setosa',]
write.csv(x,file = 'setosa.csv', row.names = FALSE, col.names = TRUE)
#find mean. medium and mode of petal length for virginica
vir <- var[var$Species=='virginica',]
summary(vir$Petal.Length)
