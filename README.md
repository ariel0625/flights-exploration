# flights-exploration

<tidyverse> 
flights %>%
  count(origin,dest,tailnum)%>%
  filter(dest=='PDX') 
  
~~row~~
  
newdata %>%
  group_by(origin,dest) %>%
  summarise(sumdelay=sum(arr_delay)) %>%  
  arrange('origin','dest',-sumdelay)
  
select 去除或選擇, arrange 排序, mutate 加新的column,summarize 針對column計算  
 
~~column~~

function definition
sum(is.na)
summary
confusion.matrix



<pply>
apply: 直的array
lapply: to list
sapply: 同lapply, reutrn vector
mapply: 多參數版本sapply




<ggplot> 
number<-group_by(subsetcrime, Year)

yearnumber<-summarise(number,count=n())

subsetcrime2<- merge(subsetcrime,yearnumber,by='Year')

ggplot(data=subsetcrime2, aes(x=Year, y=count)) +
  geom_bar(stat="identity", fill="steelblue")+
  theme_minimal()+ ggtitle("year trend")+xlab("year") + ylab("crime number")

ggplot(data = newdata ) + geom_point(mapping = aes(x = month, y=arr_delay)
  
 
 <model> 
 一般線性回歸
 model <- lm(medv ~ crim+ zn + indus+chas+nox+rm+age+dis+rad+tax+ptratio+black+lstat, data = Boston)
 summary(model)

confMatrixNew2<-confusion.matrix(titanic_dataset_new$survived,titanic_dataset_new$survive_
confMatrixNew2

二元預測(1 or 0)
model5<-glm(Demogra1$Manager~Person.Gender, data=Demogra1, family=binomial)
summary(model5)

<轉換數字>
#convert all categorical variables to numeric
Demogra1[sapply(Demogra1, is.factor)] <- data.matrix(Demogra1[sapply(Demogra1, is.factor)])
