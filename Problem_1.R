#Problem 1
#a)
x<-c(4,1,1,4)
#b)
y<-c(1,4)
#c)
x-y
#The two vectors are with different size so the second vector "y" becomes (1,4,1,4)
#d)
s<-c(x,y)
s
#e)
rep(s,10)
ss<-rep(s,10)
length(ss)
#f)
rep(s,each=3)
#g)
seq(from=7,to=21,by=1)
7:21
#h)
dd<-seq(7,21,by=1)
length(dd)