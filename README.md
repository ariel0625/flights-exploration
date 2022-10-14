# flights-exploration

<tidyverse> 
flights %>%
  count(origin,dest,tailnum)%>%
  filter(dest=='PDX')
  
newdata %>%
  group_by(origin,dest) %>%
  summarise(sumdelay=sum(arr_delay)) %>%
  arrange('origin','dest',-sumdelay)

function definition
sum(is.na)
summary
confusion.matrix


<ggplot> 
number<-group_by(subsetcrime, Year)

yearnumber<-summarise(number,count=n())

subsetcrime2<- merge(subsetcrime,yearnumber,by='Year')

ggplot(data=subsetcrime2, aes(x=Year, y=count)) +
  geom_bar(stat="identity", fill="steelblue")+
  theme_minimal()+ ggtitle("year trend")+xlab("year") + ylab("crime number")

ggplot(data = newdata ) + geom_point(mapping = aes(x = month, y=arr_delay)
  
 
 <model> 
 model <- lm(medv ~ crim+ zn + indus+chas+nox+rm+age+dis+rad+tax+ptratio+black+lstat, data = Boston)
  summary(model)

confMatrixNew2<-confusion.matrix(titanic_dataset_new$survived,titanic_dataset_new$survive_
confMatrixNew2
  
