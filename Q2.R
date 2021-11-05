#Question 2

# Usage: $Rscript Q2.R 

setwd("~/Desktop/r-novice-inflamation/R-project-for-class/Biocomp_tutorial9")

#read the data
table1 <- read.table(file="iris.csv",sep=",",header=TRUE,stringsAsFactors=TRUE)

#get the last two rows of the last two column in the file
subtable <- table1[(nrow(table1)-1):nrow(table1),(ncol(table1)-1):ncol(table1)]
print(subtable)

#get the number of observations for each species included in the data set
print(table(table1$Species))


#get rows with Sepal.Width > 3.5
print(table1[table1$Sepal.Width>3.5,])

#write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa <- table1[table1$Species=="setosa",]
write.csv(x=setosa,file="setosa.csv",sep=",")

#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica <- table1[table1$Species=="virginica",]
print("mean of Prtal.Length for observations from virginica")
print(mean(virginica$Petal.Length))
print("mininum of Prtal.Length for observations from virginica")
print(min(virginica$Petal.Length))
print("maximum of Prtal.Length for observations from virginica")
print(max(virginica$Petal.Length))

