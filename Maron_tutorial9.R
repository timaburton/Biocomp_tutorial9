##Tutorial 9 Exercise
#In directory "/Users/erinmaron/Desktop/r-novice-inflammation/BioComp/ClassWork/Biocomp_tutorial9" 

#part 1: R code that replicates head 
Top10<- read.csv(file="wages.csv", header=TRUE, sep=",")
x<-4
Top10[1:x,]

#part 2: using iris.csv 
iris<-read.csv(file="iris.csv", header = TRUE )

iris[149:150,4:5]

summary(iris[,5])

width=iris[iris$Sepal.Width]>3.5

capture.output(iris["setosa",],file="setosa.csv", append=FALSE)

length=summary(iris[101:150,])[c(1,4,6),3]
