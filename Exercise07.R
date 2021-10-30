### Problem 1 ###

# Designate you working directory which contains the file of interest (you will have to do this yourself)

setwd("C:/Users/Julian Najera/OneDrive - Johns Hopkins/Documents/Notre Dame/Semester 1/Introduction to Biocomputing/Biocomp_tutorial9/") 

# Create a variable for the file of interest so that its contents can be used later

filename <- read.csv("test.csv",header = TRUE,sep = ",",stringsAsFactors = FALSE)

#Specify how many rows you would like to extract

n <- 4

# Displays n number of rows starting from the first row in filename

filename[1:n,] 

# As an example using the mtcars data frame provided by R

filename1 <- mtcars 
n1 <- 8
filename1[1:n1,]

### Problem 2 ###

setwd("C:/Users/Julian Najera/OneDrive - Johns Hopkins/Documents/Notre Dame/Semester 1/Introduction to Biocomputing/Biocomp_tutorial9/")

iris <- read.table("iris.csv",header = TRUE,sep = ",",stringsAsFactors = FALSE)

## Part a ##

# Print last 2 rows in the last 2 columns of the iris.csv file (the code provided is general)

rc <- iris[(length(iris[,1])-1):length(iris[,1]),(length(iris[1,])-1):length(iris[1,])]
rc

## Part b ##

# Number of Observations for each species

count.setosa <- length(iris[iris$Species == "setosa",][,1])
count.setosa

count.versicolor <- length(iris[iris$Species == "versicolor",][,1])
count.versicolor

count.virginica <- length(iris[iris$Species == "virginica",][,1])
count.virginica

## Part c ##

# Rows with Sepal.Width > 3.5

sepal.width.condition <- iris[iris$Sepal.Width > 3.5,]
sepal.width.condition

## Part d ##

# Writing data for setosa species to a new file called setosa.csv

set <- iris[iris$Species == "setosa",]
write.csv(set,"setosa.csv",row.names = FALSE)

# Verify it worked

read.csv("setosa.csv",header = TRUE,sep = ",",stringsAsFactors = FALSE)

## Part e ##

# Calculating mean, minimum, and maximum of Petal.Length

mean.PetalLength <- mean(iris$Petal.Length)
mean.PetalLength

minimum.PetalLength <- min(iris$Petal.Length)
minimum.PetalLength

maximum.PetalLength <- max(iris$Petal.Length)
maximum.PetalLength




