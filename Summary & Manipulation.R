(grades=sample(c('A','B','C','D'), size=30, replace = TRUE, prob = c(0.4,0.2,0.3,0.1))) #assigning probbilities to the variables and creating a sample of 30
  summary(grades)
(gradeF=factor(grades))
  summary(gradeF)
  table(grades)
  table(gradeF)
  class(gradeF)
(gradeFO=factor(grades,ordered = T)) #ordered
(gradeFO1=factor(grades,ordered = T, levels = c('B','D','A','C'))) #user specified order
  summary(gradeFO)
  summary(gradeFO1)

(marks=ceiling(rnorm(30, mean = 60, sd=5)))
(gender=factor(sample(c('M','F'),size = 30, replace = T)))
(student1=data.frame(marks, gradeFO1)) #creating data frames
  boxplot(marks ~ gradeFO1, data=student1) #numeric then category then the data which is being used ; marks with respect to grades= ~
(student1=data.frame(marks, gender, gradeFO1))
  boxplot(marks ~ gradeFO1 + gender, data=student1) #marks with respect to grades and gender
  summary(marks)
  abline(h=summary(marks))
  quantile(marks)  
