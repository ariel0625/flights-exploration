library(tidyverse)
library('nycflights13')

data(flights)
flights <- tbl_df(flights)

flights

#I collected data from nycflights13, an existing database in package tidyvers.
#year:Year of departure
#month: Month of departure
#day:Day of departure
#dep_time: Actual departure time
#sched_dep_time: Scheduled departure time
#dep_delay: Departure delays, in minutes
#arr_time: Actual arrival time
#sched_arr_time: Scheduled arrival time
#arr_delay: Arrival delays, in minutes
#carrier: Two letter carrier abbreviation
#flight: Flight number
#tailnum: Plane tail number
#origin: Origin
#dest: Destination
#air_time: Amount of time spent in the air, in minutes
#distance: Distance between airports, in miles
#hour: Time of scheduled departure broken into hour
#minute: Time of scheduled departure broken into minutes
#time_hour: Scheduled date and hour of the flight as a POSIXct date

distinct(flights,flight)

sum(is.na(flights))
sum(is.na(flights$year))

summary(flights)
#for the discrepancy of mean of sched_dep_time and dep_time is 5;however,the mean of dep_d
#for the discrepancy of mean of sched_arr_time and arr_time is 34;however, the mean of arr
#There are many NA's in the dep_time,dep_delay,arr_time and arr_delay.

#1 Are there any route most frequent to be delayed?
# It's interesting to see whether we can find the most frequent delayed route to solve the
# Check the distinction of orign and dest to see whether there are most frequent delayed r
#2 Are there any correlation between month and delaytime of arrival?
# It's interesting to understand whether we can find the seasonal correlation between moth
# Check each month of the delaytime of arrival to see whether there is any specific month



#1
newdata<-na.omit(flights)
newdata %>%
  group_by(origin,dest) %>%
  summarise(sumdelay=sum(arr_delay)) %>%
  arrange('origin','dest',-sumdelay)


## # ... with 213 more rows
#most frequent delayed route means the routes of discrete origin and dest with their sum of arr_depay ti
#2
ggplot(data = newdata ) + geom_point(mapping = aes(x = month, y=arr_delay)
                                     
                                     
#For my first exploring result, in route and delay_time table, I would like to get more information of t
#For my second exploring result, in month and arr_delay table, I would like to get more information of t
                                     
count(flights)
unique(flights$origin)
length(unique(flights$origin))
unique(flights$dest)
length(unique(flights$dest))

flights %>%
  filter(dest=='SEA')

flights %>%
  filter(dest=='GAG')

grepl("ˆ[[:upper:]]{3}$", c(flights$dest))

sum(is.na(flights$arr_delay))

flights %>%
  group_by(dest) %>%
  summarize(typicaldelay=mean(arr_delay))%>%
  arrange('dest',-typicaldelay)

flights %>%
  group_by(dest) %>%
  summarize(typicaldelay=mean(arr_delay))%>%
  arrange('dest',-typicaldelay)
ggplot(data=flights, aes(x=hour, y=arr_delay)) +
  geom_bar(stat="identity", fill="steelblue")+
  theme_minimal()+ ggtitle("Delays by time of day")+xlab("hour of day") + ylab("arrival d


#There is much delay time in the afternoon and night
#For the definition of flight delays can be varied from different to different.
#In my statement, I calculate the mean arrival delay time as the typical delay
#time. However, there still have other definitions like using median arrival
#delay time as the typical delay time to explain the typical delay time.


flights %>%
filter(dest=='PDX',year=='2013')
 
 
flights %>%
filter(dest=='PDX',year=='2013')  %>%
distinct(carrier)

flights %>%
  group_by(carrier)%>%
  filter(dest=='PDX')%>%
  count(carrier)
  
  
flights %>%
 filter(dest=='PDX') %>%
  distinct(tailnum)
  
flights %>%
  count(origin,dest,tailnum)%>%
  filter(dest=='PDX')
  
myflights<-filter(flights,!is.na(dep_delay))
myflights

flights_num=filter(myflights, dest=='PDX'&dep_delay>0)
flights_num

flights_delayed=filter(myflights,dest=='PDX' & dep_delay>15)
flights_delayed


flight_delay = (count(flights_delayed)/count(flights_num))*100
flight_delay


myflights<-filter(flights,!is.na(dep_delay))
myflights


flights %>%
  group_by(origin,dest) %>%
  filter(dest=='PDX') %>%
  summarise(departuredelay=mean(dep_delay))
  
  
flights %>%
  group_by(origin,dest) %>%
  summarise(departuredelay=mean(dep_delay))
  
#No, there is no the New York airports noticeably worse in terms of departure
#delays for flights to Portland than others because for the New York airports
#in terms of departure delays for Portland are usually NA.



#For the question of What percentage of flights to Portland were delayed at
#departure by more than 15 minutes? This question should be well-defined what is
#the total number, is it means that all flights to Portland or means that
#flights to Portland were delayed at departure? It should be explained clearer.
