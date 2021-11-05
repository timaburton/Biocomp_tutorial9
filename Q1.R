


# Question1
# Input: 1.file name  2.the number of rows 
# Output: specific row contents of the file
# Usage: $Rscript Q1.R iris.csv 5

# return parameters from terminal to Args
Args <- commandArgs()
# Args 6 is the first parameter
filename <- Args[6]
# Args 7 is the second parameter
num <- Args[7]

#read the table 
table1 <- read.table(file=filename,sep=",",header=TRUE,stringsAsFactors=FALSE)
#select the rows
subtable <- table1[0:num,]
print(subtable)
