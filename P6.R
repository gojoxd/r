library(TransP)
library(lpSolve)

transport_1=data.frame("d1"=c(5,4,3,16),"d2"=c(3,7,4,18),"d3"=c(6,9,7,31),"d4"=c(2,1,5,25),"Supply"=c(19,37,34,90),row.names=c("O1","O2","O3","Demand"))
transport_1
nwc(transport_1)

transport_2=data.frame("d1"=c(25,30,15,200),"d2"=c(45,65,40,100),"d3"=c(10,15,55,300),"d4#"=c(0,0,0,100),"Suply"=c(200,100,400,700),row.names=c("s1","s2","s3","Demand"))
transport_2
nwc(transport_2)

obj.fun=c(3,2,5)
const=matrix(c(1,2,2,3,2,6,2,3,4),ncol=3,byrow=TRUE)
const.dir=c("<=","<=","<=")
rhs=c(8,12,12)
a=lp("max",obj.fun,const,const.dir,rhs,compute.sens=FALSE)
a
a$solution


obj.fun=c(25,20)
const=matrix(c(20,12,5,5),nrow=2,byrow=TRUE)
const.dir=c("<=","<=")
rhs=c(2000,540)
a=lp("max",obj.fun,const,const.dir,rhs,compute.sens=FALSE)
a
a$solution


a=matrix(0,4,4)
a[1,1]=10;a[1,2]=12;a[1,3]=9;a[1,4]=11;a[2,1]=5;a[2,2]=10;a[2,3]=7;a[2,4]=8;a[3,1]=12;a[3,2]=14;a[3,3]=13;a[3,4]=11;a[4,1]=8;a[4,2]=15;a[4,3]=11;a[4,4]=9
s=lp.assign(a)
s
s$solution