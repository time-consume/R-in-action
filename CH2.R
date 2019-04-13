#start#
help.start()
install.packages("vcd")
help(package="vcd")
library(vcd)
help(Arthritis)
Arthritis
example(Arthritis)
#matrix#
y<-matrix(1:20,nrow = 5,ncol = 4)
cells<-c(1,26,24,23)
rnames<-c('R1','R2')
cnames<-c('C1','C2')
mymatrix<-matrix(cells,nrow=2,ncol=2,byrow = T,dimnames = list(rnames,cnames))
#array-the spread of matrix-#
dim1<-c("A1","A2")
dim2<-c("B1","B2","B3")
dim3<-c("C1","C2","C3","C4")
z<-array(1:24,c(2,3,4),dimnames = list(dim1,dim2,dim3))
#data frame#
patientID<-c(1,2,3,4)
age<-c(25,34,13,54)
status<-c("Good","Poor","Improved","Good")
patientdata<-data.frame(patientID,age,status,row.names = patientID)
patientdata
patientdata$patientID
table(patientdata$status,patientdata$age)
patientdata[1:2]
patientdata["status"]
#attach/detach/with(data,{1,2,3})#
status<-factor(status,ordered = TRUE)
status<-factor(status,ordered = TRUE,levels =c("POOR","IMPROVED","GOOD"))
#levels is 1:k from low to high#

#list#
a<-"my first list"
b<-matrix(1:20,nrow=5)
c<-c("young","middle","old")
d<-c("One","Two","Three")
mylist<-list(title=a,ages=b,c,d)
mylist

#edit#
mydata<-data.frame(age=numeric(0),gender=character(0),weight=numeric(0))
mydata<-edit(mydata)#some problem#
a<-edit(a)#need to return the value in order to save the change#

#data import#

#Hmisc spss.get(data.sav)

#Hmisc sas.get(data.sas7bdat)

#sas code
#proc export data=mydata
#outfile="mydata.csv"
#dbms=csv;
#run;

#stata#
#read.dta#

#Label#
patientdata$gender<-c(1,2,2,1)
patientdata$gender<-factor(patientdata$gender,levels=c(1,2),labels = c("male","female"))
patientdata$gender
ls(patientdata)
