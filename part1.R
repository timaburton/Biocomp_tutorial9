rm(list=ls())

file_name <- "testfile.txt"
num_lines <- 5

# using indexes
inputFile <- readLines(file_name)
print(inputFile[1:num_lines])

# or
# writeLines(readLines(file_name, num_lines))