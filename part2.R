rm(list=ls())

# read csv file
iris_vals <- read.table("iris.csv",header=TRUE,sep=",", stringsAsFactors=FALSE)

# print last 2 rows of last 2 cols
last2_row <- tail(iris_vals, n=2)
colnum <- ncol(last2_row)
last2_rowcol <- last2_row[,(colnum-1):colnum]
print(last2_rowcol)

# number of observations for each species
table(iris_vals[,5])

# get rows with Width > 3.5
width_gt <- iris_vals[iris_vals[,2] > 3.5,]

# write data for species setosa to file
setosa <- iris_vals[iris_vals[,5] == "setosa",]
write.table(setosa, "setosa.csv",row.names=FALSE,sep=",", col.name=TRUE)

# calc mean, min, max length for virginica
mean_len <- mean(iris_vals[iris_vals[,5]=="virginica",3])
min_len <- min(iris_vals[iris_vals[,5]=="virginica",3])
max_len <- max(iris_vals[iris_vals[,5]=="virginica",3])
