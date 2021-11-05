wages=read.csv(file='wages.csv')
wages[15,]
min(wages[,4])
min(wages$wage)
wages$wage[10]
max(wages$wage)
wages[wages$wage==max(wages$wage),c(1,3)]
#All female gender
wages[wages$gender=='female',c(1,3)]
#Which row is the max in??
which(wages$wage==max(wages$wage))
 
#Appending vectors (have to switch to numeric and truncate character)
a=c(10,15,32,64)
a[2]*a[4]
b=c(a,'Pat')
b
b[1]*b[3]
b<-as.numeric(b)
b[1]*b[3]
