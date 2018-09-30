#Combined Plots

women
plot(women)
plot(women,type='p',pch=19)
plot(women,type='l')
plot(women,type='b',pch=18,lty=2,col=2)
plot(women,xlim=c(30,100),ylim=c(min(women$weight)-10,200),pch=10)
plot(women,type='p',pch=11)
abline(lm(women$weight ~ women$height),col='pink',lty=2,lwd=4) #line of best fit
stem(women$height)
hist(women$height, breaks = 10, col=1:7)
hist(marks, freq=F, col=1:5)
lines (density(marks)) #histogram with frequency
plot(density(marks),col='pink') #shape
gender
table(gender)
pie(table(gender))
x=c(10,20,40,50)
pie(x)
xlabels=c(LETTERS [1:4])
x/sum(x)
(labels2=paste(xlabels, round(x/sum(x),2)*100,sep='-'))
pie(x, labels=labels2)
x
barplot(x,col=1:4)
barplot(x, col=1:4, horiz=T)
pairs(women)
cor(women$height,women$weight)
head(mtcars)
cov(women$height, women$weight)
cor(mtcars)
names(mtcars)
pairs(mtcars)
pairs(mtcars, 1:10)
