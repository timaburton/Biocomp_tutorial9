## Exercise 7

# PART 1
# Replicate the head function
# define a variable with the file to return lines from
# a variable representing the number of lines to be returned form the top of the indicted file

setwd("/Users/johi/Desktop/Courses/Biocomputing/Biocomp_tutorial9/")

get_head <- function(filename, num_rows) {
  data <- read.table(file = filename, sep= ",", header = TRUE, stringsAsFactors = FALSE)
  head_rows <- data[1:num_rows, ]
  return(print(head_rows))
}

get_head("wages.csv", 10)

# PART 2

iris_data <- read.table(file = "iris.csv", sep= ",", header = TRUE, stringsAsFactors = FALSE)

# Print the last 2 rows in the last 2 columns to the R terminal
print(tail(iris_data[, (ncol(iris_data)-1):ncol(iris_data)], 2))

# Get the number of observations for each species included in the data set
nrow(iris_data[iris_data$Species == "setosa", ])
nrow(iris_data[iris_data$Species == "versicolor", ])
nrow(iris_data[iris_data$Species == "virginica", ])

# Get rows with Sepal.Width > 3.5
iris_data[iris_data$Sepal.Width > 3.5, ]

# Write the data for the species setosa to a comma-delimited file named ‘setosa.csv’
write.table(x = iris_data[iris_data$Species == "setosa", ], file = "setosa.csv", sep = ",", col.names = TRUE)

# Calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
petal_len <- iris_data[iris_data$Species == "virginica", ][, "Petal.Length"]

mean(petal_len)
min(petal_len)
max(petal_len)
