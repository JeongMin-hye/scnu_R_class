install.packages("imager")    #바람개비(windwheel)가 돌아가게 함
library(imager)
img_path<-"./scnu_R_class-master/img/pinwheel.png"   #이미지의 위치 설정
img<-load.image(img_path)                     #이미지 불러오기

img<-resize(img, size_x= 400L, size_y=400L)    #이미지 크기 조정
plot(img, xlim=c(0,400), ylim=c(0,400))        #이미지 표시하기

#반복으로 회전#
angle<-0          #angle 변수에 대한 지정  
while(TRUE){
  angle<-angle+10    #10도씩 회전
  imrotate(img, angle, cx=200, cy=200) %>% plot(axes=FALSE)   #이미지 회전 imrotate(이미지, 각도,)
  Sys.sleep(0.4)
}



install.packages("magick")
