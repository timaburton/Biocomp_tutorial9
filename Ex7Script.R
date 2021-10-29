###Exercise 7 Script 
###Marlee Shaffer

##Part 1: Replicate the functionality fo the head function in bash 
headR<-function(filename,linenum){
  file<-read.csv(filename)
  return(file[1:linenum,])
}

#To check to make sure the newly developed function works properly, I used the wages.csv to pull the first 16 rows.
headR("wages.csv", 16)

#Part 2: Use iris.csv to: 
iris<-read.csv("iris.csv")

#Print the last 2 rows and the last two columns to the R terminal
T<-tail(iris[,4:5],2)
print(T)

#Get the number of observations for each species in the data set
X<-sum(iris[,5]=="virginica")
Y<-sum(iris[,5]=="setosa")
Z<-sum(iris[,5]=="versicolor")
c("Virginica:", X, "Setosa:", Y, "Versicolor:", Z)

#Get rows with Sepal.Width > 3.5
sepal<-(iris[iris$"Sepal.Width">3.5,])
print(sepal)

#Write the data for species setosa to a comma-deliminated file named 'setosa.csv'
setosa<-(iris[iris $"Species"=="setosa",])
write.csv(setosa, 'setosa.csv')

#Calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
vir<-(iris[iris$"Species"=="virginica",])
head(vir)
M<-mean(iris[iris$"Species"=="virignica","Petal.Length"])
head(M)
vir[["Petal.Width"]])
min(vir[["Petal.Width"]])
max(vir[["Petal.Width"]])
