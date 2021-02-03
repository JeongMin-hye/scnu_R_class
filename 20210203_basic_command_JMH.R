library(readxl)
exam<-read.csv("./scnu_R_class-master/Data/csv_exam.csv", fileEncoding="euc-kr")
View(exam)     #전체 dataframe 보여주기
head(exam)    #앞에서 6개 dataframe 보여주기
tail(exam)    #뒤에서 6개 dataframe 보여주기
heas(exam, 10)    #앞에서 원하는 개수만큼 보여주기
tail(exam, 10)    #뒤에서 원하는 개수만큼 보여주기

summary(exam)        #기술통계를 보여줌
max(exam$math)       #특정한 변수만 불러서 보여주고 싶을때:math의 최대값
min(exam$english)    #특정한 변수만 불러서 보여주고 싶을때:english의 최소값


#################################
install.packages("ggplot2")  
lilbrary("ggplot2")
mpg<-as.data.frame(ggplot2::mpg)   #pplot2 의 mpg파일을 mpg로 지정
dim(mpg)           # 몇차원 행렬인지 확인가능
View(mpg)
summary(mpg)

install.packages("dplyr")
library(dplyr)

df_raw<-data.frame(var1=c(1,2,3),
                   var2=c(1,2,3))
df_raw
df_new<-df_raw   #dataframe을 복사해서 새로 만듦
df_new

df_new<-rename(df_new, v2=var2)
df_new
df_new$var_sum<-df_new$var1+df_new$v2   #var1+v2를 합쳐서 새로운 변수 생성
df_new
