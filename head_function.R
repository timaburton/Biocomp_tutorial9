data <- read.csv(file = 'filename.csv', header=FALSE)
num_row <- 5

for (i in c(1:num_row)){
  print(data[i,])
}

