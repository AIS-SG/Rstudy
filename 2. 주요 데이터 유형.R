# 변수 사용하기

var1 <- 1
var2 <- "서승기"
var3 <- as.Date("2003-12-31")
var4 <- "R is very easy programming~~!"

rm(var4) #변수 초기화

objects() #선언된 변수 확인


#숫자형 데이터와 산술 연산자

4 + 2
4 - 2
4 * 2
4 / 2
4 %/% 2 #정수 나누기
4 %% 3 #나머지 구하는 연산자
2 ^ 3 # 승수구하기

# 0의 갯수를 주의하세요
# e 앞에 있는 수는 앞자리 수의 숫자, 뒤에 있는 수는 0의 개수
10000
100000
5e2
5e3
5e-1
5e-2
51e2

#문자형
#데이터가 숫자형인지 문자형인지 구분하는 함수 : class()
class(1)
class('1')
class('A')
class('1975-10-23')

#날짜형
#날짜로 인식하게 해주는 함수 : as.Date()
date1 <- as.Date('1975-10-23')
date1
class(date1)
date2 <- as.Date('1975-12-31')
date2 - date1

#lubridate 패키지 사용하기
install.packages("lubridate")
library("lubridate") #package 실행

date <- now( ) # 현재 날짜와 시간 넣기
date
year(date) # 년도만 출력
month(date, label=T) # 월을 출력하되 숫자로 출력하기
month(date, label=F) # 월만 출력하기
day(date) # 일 출력하기
wday(date,label=T)
wday(date,label=F)
date <- date - days(2) # 2일 전 날짜 출력하기
date
month(date) <- 2 # 2월로 설정하기
date
date+years(1) #1년 추가하기
date+months(1) #1개월 추가하기
date + hours(1) #1시간 추가하기
date + minutes(1) #1분 추가하기
date + seconds(1) #1초 추가하기
date <-hm("22:30") ; date #시간 분 지정하기

#NA형 & NULL형
sum(1,2,3)
sum(1,NA,2)
sum(1,NA,2,na.rm=TRUE) #na.rm : NA가 나오면 자동으로 삭제해주는 함수

# NA를 0 으로 바꾸기
a <- c(1,NA,2)
a[which(is.na(a)==T)] <- 0
a

# NULL 주의사항
sum(1,NULL,2) #NULL은 원래부터 자동으로 없애준다
x <- list(80,NULL,40)
x
mean(unlist(x))

x2 <- replace(x,sapply(x,is.null),0)
mean(unlist(x2))

#factor 형 - 빈도 분석에 주로 사용됨
# 원래 데이터를 고유의 숫자로 변환 후 출현 빈도 계산

address <- c('서울','부산','서울','광주','대구','전남')
address

summary(address) # 요약할때 사용하는 함수
summary(as.factor(address))
summary(factor(address))
 


