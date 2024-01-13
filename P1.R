m = array(1:18,dim=c(3,3,2))
m
m[c(1), , 1]
m[c(3), , 2]
a = rbind(m[ , , 1], c(10,11,12))
a
b=m[ , , 2]
b
10%in%b


a =data.frame(col1=c(1:10),col2=c("A","B","C","D","E","F","G","H","I","J"),col3=c(11:20),col4=c("K","L","M","O","P","Q","R","S","T","U"),col5=c(21:30))
a
names(a)
dim(a)
str(a)
head(a,3)
tail(a,3)
a$constant=10
a
summary(a)
a[ ,c("Constant")]=Null
a
names(a)[c(1,3)]=c("A","B")
a
newcolumn = cbind(a,d=c(1))
newcolumn
newrow = rbind(a,e=c(2))
newrow