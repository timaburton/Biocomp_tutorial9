data <- read.csv(file='iris.csv')

row <- nrow(data)
col <- ncol(data)

print('Last two rows')
print(data[(row-1):row,])
print('Last two col')
print(data[,(col-1):col])

print('Number of each species')
print(table(data[,col]))

print('Data with sepal width of greater than 3.5')
print(data[(data$Sepal.Width > 3.5),])

#writing the setosa data to a separate data file called 'setosa_Data.csv'
setosa_data <- data[(data$Species == 'setosa'),]
write.csv(setosa_data, 'setosa_Data.csv')

print('Mean Petal length')
print(mean(data$Petal.Length[(data$Species == 'virginica')]))
print('Max Petal Length')
print(max(data$Petal.Length[(data$Species == 'virginica')]))
print('Min Petal Length')
print(min(data$Petal.Length[(data$Species == 'virginica')]))
