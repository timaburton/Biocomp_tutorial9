#Exercise 7

#Problem 1
#Define variable with the file to return lines from
y=read.table(file="wages.csv", header=TRUE,stringsAsFactors = FALSE, sep = ",")
y
#Variable Representing number of lines returned from file
#Where first column contains row number and x is variable number of lines
#that will be returned. 
z<-y[c(1:x),]
z

#Problem 2
#Load in Iris data
Irisdata=read.table(file="iris.csv", header = TRUE, stringsAsFactors = FALSE, sep = ",")
Irisdata
#Part a
#Print the last 2 rows
last2R=Irisdata[149:150,]
last2R
#Print the last 2 columns in the last 2 rows
print("Last two rows in the last 2 columns")
last2C=last2R[,4:5]
last2C
#Part b
setosa<-Irisdata[Irisdata$Species=="setosa",]
nrow(setosa)
versicolor<-Irisdata[Irisdata$Species=="versicolor",]
nrow(versicolor)
virginica<-Irisdata[Irisdata$Species=="virginica",]
nrow(virginica)
#Part c
c<-Irisdata[Irisdata[,2]>3.5,]
c
#Part d
setosa<-Irisdata[Irisdata$Species=="setosa",]
write.csv(setosa,"~/Biocomp_tutorial9/setosa.csv", row.names = FALSE)
SetosaDelimited=read.table(file="setosa.csv", header = TRUE, stringsAsFactors = FALSE, sep = ",")
SetosaDelimited
# Part e
virginica<-Irisdata[Irisdata$Species=="virginica",]
e<-virginica[,3]
e
mean(e)
min(e)
max(e)