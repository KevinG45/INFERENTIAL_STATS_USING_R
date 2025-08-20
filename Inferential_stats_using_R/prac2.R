#atomic vector 
y=c(90,9);y
class(y)
length(y)
##lists
x=list(1,"q",4,5);x
class(x)
y1=list("100","hi");y1
a=1:9
mat=matrix(a,nrow=3,byrow=F)
mat
dim(mat)
b=1:10
B=matrix(b,nrow=3,byrow = T);B
class(B)
dim(B)
B[2,3]
B[1,4]

rname=c("R1","R2")
cname=c("C1","C2")
ma1=matrix(c(4,8,3,-6),nrow=2,byrow=T,dimnames=list(rname,cname))
ma1

d1=matrix(1:9,ncol=3);d1
d2=matrix(1:6,ncol=3);d2
d1+d2
det(d1)
s1=1:5
name=c("ram","sham","bam")