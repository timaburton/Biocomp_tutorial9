head1 = function(filename, rows) {
  data = read.table(file = filename, sep= ",", header = TRUE, stringsAsFactors = FALSE)
  hrows = data[1:rows, ]
  return(print(h_rows))
}
head1("wages.csv", 5)

#Part 2

iris_data <- read.table(file = "iris.csv", sep= ",", header = TRUE, stringsAsFactors = FALSE)
print(tail(iris_data[, (ncol(iris_data)-1):ncol(iris_data)], 2))
nrow(iris_data[iris_data$Species == "setosa", ])
nrow(iris_data[iris_data$Species == "versicolor", ])
nrow(iris_data[iris_data$Species == "virginica", ])
iris_data[iris_data$Sepal.Width > 3.5, ]

write.table(x = iris_data[iris_data$Species == "setosa", ], file = "setosa.csv", sep = ",", col.names = TRUE)

mean(iris_data[iris_data$Species == "virginica", ][, "Petal.Length"])
min(iris_data[iris_data$Species == "virginica", ][, "Petal.Length"])
max(iris_data[iris_data$Species == "virginica", ][, "Petal.Length"])