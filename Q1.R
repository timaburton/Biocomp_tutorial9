


# Question1
# Input: 1.get the file name from the keyboard 2.get the number of rows from keyboard
# Output: specific row contents of the file
# Usage: $Rscript Q1.R iris.csv 5

setwd("~/Desktop/r-novice-inflamation/R-project-for-class/Biocomp_tutorial9")
  
Args <- commandArgs()

filename <- Args[6]

num <- Args[7]

#read the table 
table1 <- read.table(file=filename,sep=",",header=TRUE,stringsAsFactors=FALSE)
#select the rows
subtable <- table1[0:num,]
print(subtable)
