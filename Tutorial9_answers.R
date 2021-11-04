#### Below is my answer to question 1 

wages <- read.table(file="wages.csv", header=TRUE, sep=",", stringsAsFactors=FALSE)
wages
number_of_lines <- 10 
wages[1:number_of_lines,]

#### Below is my answer to question 2
iris <- read.table(file="iris.csv", header=TRUE, sep=",", stringsAsFactors = FALSE)
iris

# Below is my answer to 2.a
iris[149:150,4:5]

# Below is my answer to 2.b
setosa <- iris[iris$Species=="setosa",]
setosa
number_setosa <- nrow(setosa)
number_setosa
#number_setosa is a variable which holds the number of setosa observations

versicolor <- iris[iris$Species=="versicolor",]
versicolor
number_versicolor <- nrow(versicolor)
number_versicolor
#number_versicolor is a variable which holds the number of versicolor observations

virginica <- iris[iris$Species=="virginica",]
virginica
number_virginica <- nrow(virginica)
number_virginica
#number_virginica is a variable which holds the number of virginica observations

# Below is my answer to 2.c
sepal_width <- iris[iris$Sepal.Width>3.5,]
sepal_width
#sepal_width is a variable which holds the number of observations with sepal width > 3.5

# Below is my answer to 2.d
write.table(setosa, file="setosa.csv", sep=",", dec=".", row.names=FALSE, col.names=TRUE)

# Below is my answer to 2.e
mean_petal_length <- mean(virginica$Petal.Length)
mean_petal_length
min_petal_length <- min(virginica$Petal.Length)
min_petal_length
max_petal_length <- max(virginica$Petal.Length)
max_petal_length