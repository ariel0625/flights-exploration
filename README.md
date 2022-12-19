# flights-exploration

#tidyverse
flights %>%
  count(origin,dest,tailnum)%>%
  filter(dest=='PDX') 
  
#row
  
newdata %>%
  group_by(origin,dest) %>%
  summarise(sumdelay=sum(arr_delay)) %>%  
  arrange('origin','dest',-sumdelay)
  
select 去除或選擇, arrange 排序, mutate 加新的column,summarize 針對column計算  
 
#column

function definition
sum(is.na)
summary
confusion.matrix



#pply
apply: 直的array
lapply: to list
sapply: 同lapply, reutrn vector
mapply: 多參數版本sapply




#ggplot 
number<-group_by(subsetcrime, Year)

yearnumber<-summarise(number,count=n())

subsetcrime2<- merge(subsetcrime,yearnumber,by='Year')

ggplot(data=subsetcrime2, aes(x=Year, y=count)) +
  geom_bar(stat="identity", fill="steelblue")+
  theme_minimal()+ ggtitle("year trend")+xlab("year") + ylab("crime number")

ggplot(data = newdata ) + geom_point(mapping = aes(x = month, y=arr_delay)
  
 
 #model 
 一般線性回歸
 model <- lm(medv ~ crim+ zn + indus+chas+nox+rm+age+dis+rad+tax+ptratio+black+lstat, data = Boston)
 summary(model)

confMatrixNew2<-confusion.matrix(titanic_dataset_new$survived,titanic_dataset_new$survive_
confMatrixNew2

二元預測(1 or 0)
model5<-glm(Demogra1$Manager~Person.Gender, data=Demogra1, family=binomial)
summary(model5)

#轉換數字
#convert all categorical variables to numeric
Demogra1[sapply(Demogra1, is.factor)] <- data.matrix(Demogra1[sapply(Demogra1, is.factor)])

#multicollinearity
Variance Inflation Factors (VIF) > 5 is problematic and values > 10 indicate poor regression estimates

Akaike information criterion (AIC) Bayesian information criterion (BIC), the smaller is better

#test, train: 用test做predict

#Measuring the quality of model fit：Mean squared error (MSE)
Training MSE: How well the model works on the training data Test MSE: How well the model work on test data (unseen data).
We really only care about the test MSE
Choose the model that gives the lowest test MSE,

>> low variance() and low bias
Variance refers to the amount by which f ̂ would change if we estimated it using a different training dataset.( f ̂ 的變動)
Bias refers to the error that is introduced by approximating a real-life problem by a simple model. (錯誤)

sweet point : If our model complexity exceeds this sweet spot, we are in effect over-fitting our model; while if our complexity
 
falls short of the sweet spot, we are under-fitting the model.

Cross-validation — estimate MSE using training data
Resampling — Repeatedly drawing samples (resampling) from a training set and refitting a model on each sample in order to obtain additional information about the fitted model

Recall: test error is the average error that results from using a statistical learning method to predict the response on a new observation - a measurement that was not used in training the method

LOOCV is a special case of k-fold CV in which k is set to equal n



Distance or similarity
Continuous - euclidean distance
Continuous - correlation similarity
Binary - manhattan distance
Pick a distance/similarity that makes sense for your problem














