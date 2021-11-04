#Exercise7
# Problem 1
data=read.table(file="wages.csv",header=TRUE,sep=",")
# how to get variable for number of lines? 
lines=5
data[1:lines,]

#Problem 2
data2=read.table(file="iris.csv",header=TRUE,sep=",")
# print last 2 rows in last 2 columns
lastrows<-tail(data2,n=2)
lastrowsandcolumns<-lastrows[,3:4]
# what is number of observations for each species?
unique(data2$Species)
sum(data2$Species=="setosa")
sum(data2$Species=="versicolor")
sum(data2$Species=="virginica")
# get rows with Sepal.Width > 3.5
sepalwidth<-data2[data2$Sepal.Width>3.5,]
# write data for species setosa to comma-delimited file named "setosa.csv"
setosa=data2[data2$Species=="setosa",]
write.table(x=setosa,file="setosa.csv",row.names=FALSE,col.names=TRUE,sep=",")
# Calculate mean, minimum, and max of Petal.Length for obs from virginica
virginica=data2[data2[,5]=="virginica",]
max(virginica$Petal.Length)
min(virginica$Petal.Length)
mean(virginica$Petal.Length)
