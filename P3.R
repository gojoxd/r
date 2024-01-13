country=c("India","Germany","China","Pakistan","Sweden")
birth_rate=c(33,16,40,35,15)
country
birth_rate
#a - bar chart
barplot(birth_rate,names.arg=country,col="blue",main="Birth Rate per 1000 for different 
countries",xlab="Country",ylab="Birth Rate")


country=c("India","Germany","China","Pakistan","Sweden")
birth_rate=c(33,16,40,35,15)
#b - pie chart
pie(birth_rate,main="Birth rate per 1000 for different countries - Pie 
Chart",labels=country,radius=1,col=rainbow (length(birth_rate)))


max=c(40.5,42.8,37.8,39.4)
min=c(34.7,33.5,32.2,33.1)
d=data.frame(max,min,row.names=c("Delhi","Kolkata","Mumbai","Chennai"))
d
boxplot(d,main="Max and Min Temperatures",col=c("lightblue","pink"),names=c("Max","Min"))


years=c("2000-2001","2001-2002","2002-2003")
y1=c(20,10,5)
y2=c(25,9,10)
y3=c(30,20,20)
d=data.frame(y1,y2,y3)
d
d1=as.matrix(d)
d1
barplot(d1,beside=F,names.arg=years,col=1:2:3,legend=c("2000-2001","2001-
2002","2002- 2003"),xlab="Years",ylab="No. of students")


midx=seq(30,70,10)
f=c(6,12,25,16,11)
cls_limit=seq(25,75,10)
y=rep(midx,f)
y
hist(y,breaks=cls_limit,col="red",main="Histogram of data",xlab="Marks",ylab="No. of students")


lb=seq(0,40,10)
ub=seq(10,50,10)
midx=(lb+ub)/2
f=c(6,12,25,16,11)
x0=c(0,midx,50)
y0=c(0,f,0)
y=rep(midx,f)
y
bks=seq(0,50,10)
hist(y,breaks=bks,main="Frequency curve and polygon",col="purple",xlab="Marks",ylab="No. of 
students")
lines(x0,y0)


f=c(12,24,43,38,22,11)
lc=cumsum(f)
lc
uc=1:6
uc
for (i in 6:1){uc[i]=sum(f[6:i])}
uc
lbx=seq(19.5,45.5,5)
lbx
ubx=seq(24.5,49.5,5)
ubx
plot(ubx,lc,type="l",xlim=c(15,50),xlab="Age",ylab="Cumulative frequency",lwd=2)
lines(lbx,uc,type="l",xlim=c(15,50),xlab="Age",ylab="Cumulative frequency",lwd=2)


x=c(50,50,55,60,65,65,65,60,60,50)
y=c(11,13,14,16,16,15,15,14,13,13)
plot(x,y,main="Scatterplot - Sales vs Expenses",xlab="Sales",ylab="Expenses")


marks=c(23,42,12,10,15,14,23,45,10,11,34,56,23,34,19)
boxplot(marks,main="Marks",xlab="JD College",ylab="Marks of students",col="orange")


jan=c(23,34,32,31,34,35,23,27,34)
feb=c(23,21,35,34,36,25,26,23,21)
mar=c(33,35,26,27,28,21,25,24,23)
apr=c(22,21,23,34,35,39,38,37,36)
may=c(38,37,39,40,35,37,41,38,39)
d=data.frame(jan,feb,mar,apr,may)
d
boxplot(d,main="Temperature",xlab="Month",ylab="Degrees in Celcius",names=c("January","February","March","April","May"),col=topo.colors(5))


x1=c(60,68,50,66,60,55,72,60,62,51)
x2=c(42,56,45,64,50,55,57,48,56,42)
x3=c(74,71,78,80,72,62,70,70,76,65)
df=data.frame(x1,x2,x3)
corrplot(cor(df),method="square",col=c("pink","grey"))
