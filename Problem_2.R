## NOTE: readability: leave some blank linkes between the code to make it more readable
## NOTE: always leave space before and after <-, -, +, *, /. Leave a blank after commas. Leave blanks around 
## <, >, ==, <=, =>, etc.

#Problem 2
#a)
xmin<-c(23,20.5,28.2,20.3,22.4,17.2,18.2)
xmax<-c(25,22.8,31.2,27.3,28.4,20.2,24.1)
#b)
## NOTE: do not assign to built-in object like diff. To see what diff normally does, run
?diff

diff<-xmax-xmin
#c)
avgMin<-mean(xmin)
avgMax<-mean(xmax)
#d)
xmin[xmin<avgMin]
#e)
xmin[xmax>avgMax]
#f)
## NOTE: not DRY (don't repeat yourself). Assign the dates to a vector and
## then use that vector to assign names to the elements of xmin and xmax

names(xmin)<-c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
names(xmax)<-c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
#g)
temperature<-data.frame(xmin,xmax)
#h)
## Improve readability
temperature<-within(temperature, {
	Fahrenheit <- (9 / 5) * xmin + 32
})

#i)
Fahrenheitnew<-data.frame(fxmin=9/5*xmin+32,fxmax=9/5*xmax+32)

#j)
Fahfivedays<-data.frame(fxmin=xmin[seq(1:5)]*9/5+32,fxmax=xmax[seq(1:5)]*9/5+32)
Fahfivedayss<-data.frame(fxmin=xmin[seq(length(xmin)-2)]*9/5+32,fxmax=xmax[seq(length(xmax)-2)]*9/5+32)

## Easier:
Fahrenheitnew[1:5, ]
Fahrnheitnew[-(6:7), ]

