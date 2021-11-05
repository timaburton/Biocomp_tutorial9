###Script answer to question 1

##replace wages.csv with wanted table
#x will be number of lines that we want to head

y<- read.table("wages.csv", sep = ",", header = TRUE,  stringsAsFactors = FALSE)
z <-y[c(1:x),]
z

###Number 2 answers
##Loading iris file
#a)
Irisdata<- read.csv("iris.csv", sep = ",", header = TRUE, stringsAsFactors = FALSE)
numcol<-length(Irisdata[1,])
b<-numcol - 1
numrow<- length(Irisdata[,1])
c<-numrow - 1
Ismall<-Irisdata[c(c:numrow),c(b:numcol)]
Ismall
#b)
Sotosa<-Irisdata[Irisdata$Species=="setosa",]
nrow(Sotosa)
versicolor<-Irisdata[Irisdata$Species=="versicolor",]
nrow(versicolor)
virginica<-Irisdata[Irisdata$Species=="virginica",]
nrow(virginica)

#c)

Irisdata[Irisdata$Sepal.Width>3.5,]

#d)

write.csv(Sotosa, file = "setosa.csv")
read.csv("setosa.csv",sep = ",", stringsAsFactors = FALSE)

#e)

min(virginica$Petal.Length)
max(virginica$Petal.Length)
mean(virginica$Petal.Length)
