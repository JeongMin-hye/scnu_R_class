##########dataframe 생성####################
english<-c(90,80,60,70)
english
math<-c(50,60,100,20)
math          
class<-c(1,1,2,2)
class
d_frame<-data.frame(english, math,class)
d_frame
mean(d_frame$english)
d_frame_02<-data.frame(english=c(90,80,60,70),
                       math=c(50,60,100,20),
                       class=c(1,1,2,2))   # 한꺼번에 dataframe만들기

#######엑셀파일 불러오기#############
library(readxl)
read_data_excel<-read_excel("./scnu_R_class-master/Data/excel_exam.xlsx")
View(read_data_excel)


###### 엑셀 파일불러오기####
read_sheet<-read_excel("./scnu_R_class-master/Data/excel_exam.xlsx", sheet=3)                #불러올 sheet를 지정가능하다
View(read_sheet)

read_csv_data<-read.csv("./scnu_R_class-master/Data/20210203_sample_csv_data.csv")
View(read_csv_data)
