#Data structures in R

#Vectors----
x=1:10 #create a seq of nos
  x
x1 <- 1:20 #another way of creating a sequence of nos
  x1
(x1=1:30) #creating and assigning values
(x2=c(1,2,13,4,5))
  class(x2) #tells what type of vector
(x3=letters[1:10]) #char vector
  class(x3)
LETTERS[1:26]
(x3b=c("a","Dhiraj","4")) #c=combination of values
  class(x3b)
(x4=c(T,FALSE,TRUE,T,F))
  class(x4)
?c
x5=c(3L,5L)
  class(x5)
(x5b=c(1,"a",T,4L))
  class(x5b)
x5c=c(1,4L)
  class(x5c)

#Access elements----
(x6=seq(0,100,by=3))
  class(x6)
  ?seq
  ?by
  ?methods
  methods(class='numeric')
  #[1]0 2 4 6 8 10
  ls() #variables in my environment
x6
  length(x6)
  x6[20]
  x6[3]
  #[1]4
  x6[c(2,4)] #3printing 2 and 4th element; cant have one positive and one negative
  x6[-1] #not printing the first element
  x6[-2] #not printing the second element
  x6[-c(1:10)]
  x6[c(2,-4)]
  x6[-c(1:10,15:20)]
  x6[c(2.4,3.54)]
  length(x6)
  x6[-length(x6)-1]
x7=c(x6,x2)
  class(x7)
  length(x7)

#Modify----
sort(x6)
  sort(x6[-c(1,2)])
  sort(x6, decreasing=T) #sorting the created array and printing
  rev(x6) #reverse order of how it was created
  seq(-3,10,by=0.2)
x6b=c(15,9,0,1)
  sort(x6b)
  rev(x6b)
(x=-3:2) #creating the vector starting from -3
  x[2] <- 0;x #modify second element
  x
  x[x<0]=5;x #modify all elements less than 0
  ls()
  x[x<0 & x>0]=5;x 
  x=x[1:4];x #truncate x to first 4 elements

#Delete Vectors----
x=seq(1,5,length.out=10) #dividing 1-5 in 10 parts
  x=NULL
  x
x[4]
  ?NULL
(x=rnorm(100))
  plot(density(x))
(x1=rnorm(1000, mean=50, sd=5))
  plot(density(x1))
(x1b=rnorm(10000,mean=50,sd=5))
  plot(density(x1b))
mean(x1)
mean(x)
?mean
abline(v=mean(x1),h=0.04)
abline(v=mean(x))
abline(v=mean(x1b))


#Matrices----
1:12
100:12
(m1=matrix(1:12,nrow=4))
(m2=matrix(1:12,ncol=3,byrow=T))
x=101:124
  length(x)
  matrix(x,ncol=6)
  class(m1)
  matrix(x,ncol=5) #ncol needs to be the factor of total numbers in the matrix
  attributes(m1)
  dim(m1)
  m1
  sd(m1)

#Access elements of matrix----
m1[1,2:3] #first element of column 2 and 3
m1[c(1,3),] #1 and 3 row of all columns
  m1
paste("C", "D", sep="-")
paste("c",1:100,sep="-")
  (colnames(m1)=paste('C', 1:3, sep =' '))
  (rownames(m1)=paste('R',1:4,sep=' '))
  m1
  m2[,2:3]
  m2[c(1,2),c(2,3)]
  m2[,]
  m2[-2,]
  m2
  m2[1:5] #matrix is like vector
  m2[c(TRUE,F,T,F),c(2,3)] #lodical indexing
  m2[m2>5&m2<10]
  m1:m2
  m1[1:2,1:2]
  m1[c('R 1'),]
  m1[c(T,T,F,F),]

#Modify Matrix----
m2
m2[2,2]
m2[2,2]=10
m2
m2[m2>10]=99
m2
rbind(m2,c(50,60,70))
cbind(m2,c(55,65,75,85))
cbind(m2, m2)
rbind(m2,m2)

#Row and Column Summary----
m1
  colSums(m1);rowSums(m1)
  colMeans(m1);rowMeans(m1)
  t(m1) #transpose
  m1
  sweep(m1,MARGIN = 1,STATS = c(2,3,4,5),FUN = "+" ) #adding ; margin=1 is row wise
  sweep(m1,MARGIN = 2,STATS = c(2,3,4), FUN = "*") #multiplying ; margin=2 is column wise

#AddMargins----
m1
  addmargins(m1,margin=1,sum) #column wise
  addmargins(m1,1,sd) #column wise
  addmargins(m1,2,mean) #row wise
  addmargins(m1,c(1,2),mean) #row and column both
  addmargins(m1,c(1,2),list(list(mean, sum, max),list(var,sd))) #row and column both


#Data Frames----
(rollno=1:30)
(sname=paste('student',1:30,sep=''))
(gender=sample(c('M','F'), size = 30, replace = T, prob = c(0.7,0.3)))
(marks=floor(rnorm(30, mean=50, sd=10)))
(marks2=ceiling(rnorm(30,40,5)))
(course=sample(c('BBA','MBA'), size = 30, replace = T, prob = c(0.5,0.5)))
  rollno;sname;gender
  marks;marks2;course

#Creating Data Frame----
df1= data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors = F)
  str(df1) #structure of DF
  head(df1) #top 6 rows
  head(df1,n=3) #top 3 rows
  tail(df1) #last 6 rows
  class(df1) # DF
  summary(df1) #summary
  df1$gender = factor(df1$gender)
  df1$course = factor(df1$course)
  str(df1)
  summary(df1)
  distributions(x1)

df1  #full data
  df1$gender  # one column
  df1[ , c(2,4)] #multiple columns
  df1[1:10 ,] #select rows, all columns
#as per conditionis
  df1[ marks > 50 & gender=='F', c('rollno', 'sname','gender', 'marks')]
  df1[ marks > 50 & gender=='F', c(1,2)]
  df1[ marks > 50 | gender=='F', ]

  names(df1)  # names of columns
  dim(df1)  #Dimensions

aggregate(df1$marks, by=list(df1$gender), FUN=max)
aggregate(marks ~ gender, data=df1, FUN=max)


(df2 = aggregate(cbind(marks,marks2) ~ gender + course, data=df1, FUN=mean))


#Arrays----

#Factors----

#List----