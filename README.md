# flights-exploration

flights %>%
  count(origin,dest,tailnum)%>%
  filter(dest=='PDX')

function definition
sum(is.na)
summary
confusion.matrix


ggplot: 
number<-group_by(subsetcrime, Year)
yearnumber<-summarise(number,count=n())
subsetcrime2<- merge(subsetcrime,yearnumber,by='Year')
ggplot(data=subsetcrime2, aes(x=Year, y=count)) +
  geom_bar(stat="identity", fill="steelblue")+
  theme_minimal()+ ggtitle("year trend")+xlab("year") + ylab("crime number")
  
  
 model <- lm(medv ~ crim+ zn + indus+chas+nox+rm+age+dis+rad+tax+ptratio+black+lstat, data = Boston)
  summary(model)
  
  
