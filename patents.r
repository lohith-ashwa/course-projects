setwd("C:/Users/Lohith/Desktop/SJC/Seattle University")
patents=read.csv("patents_1.csv", header = TRUE)
View(patents)
library(dplyr)
library(ggplot2)
# below is a subset containing "US" only entries
pat_us=filter(patents,ee_country=="US")
View(pat_us)


# All queries are answered with respect to the given dataset only.


# Which category has seen the highest number of patents being filed? 
plot(table(patents$ptype))
table(patents$ptype)
# Utility Category 


#Country having the highest number of patent applications?
plot(table(patents$ee_country))
# The US


# Who has filed highest number of patents? 
table(patents$ee_role_desc)
# Foreign companies and corporations have filed the highest number of patents.
# U.S. state government has applied for least number of patents.


# Patent with most forward citations as of Dec 31st, 2019.
patents[which.max(patents$forward_cites),c(1,7)]
patents$forward_cites[which.max(patents$forward_cites)]
# Patent with highest forward citations is patent with patnum=12353.
#It has been citied in 893 other patents.


# Country with the highest and lowest grant duration?
patents$approval_time= patents$grantyear - patents$applyear
A=aggregate(approval_time ~ ee_country,data = patents,FUN = mean)
A$ee_country[which.min(A$approval_time)]
min(A$approval_time)
A$ee_country[which.max(A$approval_time)]
max(A$approval_time)
# United Arab Emirates has the fastest approval time.
# Netherlands Antilles has the slowest approval time.


# Organisation with highest number of patents
tail(sort(table(patents$ee_name)))
#IBM has filled for the highest number of patents followed by Samsung

#No. of Non-US patents
nrow(patents)-nrow(pat_us)


# Roles vs Number of Patents
hist(patents$ee_role)


# Plot of patent type
pie(table(patents$ptype),radius = 1.5, cex = 1)


# Following queries are specific to US.
# Which state has filed for the highest number of patents?
table(pat_us$ee_state)
barplot(pat_us$ee_state)
# CA, California has filed for the highest number of patents.
# HI, Hawaii has filed the lowest number of patents. 


# State with extreme approval times.
X=aggregate(approval_time ~ ee_state,data = pat_us,FUN = mean)
X$ee_state[which.min(X$approval_time)]
min(X$approval_time)
# On an average Hawaii grants a patent within a year of applying.
# Hawaii is the state with lowest approval time.
X$ee_state[which.max(X$approval_time)]
max(X$approval_time)
# On an average Delaware grants a patent in about 3.3 years of applying.
# Delaware is the state with highest approval time.


# City with highest number of patents?
tail(sort(table(pat_us$ee_city)))
# Armonk city has the highest number of patents filed at 750.


# no. of patents granted over years 2011 to 2019 in the US
Year=(min(pat_us$grantyear):max(pat_us$grantyear))
Patents_granted=0
k=1
for(x in 2011:2019){
  c=0
  for(y in 1:nrow(pat_us)){
    if(x==pat_us$grantyear[y])
      c=c+1
  }
  Patents_granted[k]=c
  k=k+1
}
df=data.frame(Year,Patents_granted)
View(df)
plot(df$Year,df$Patents_granted,xlab="Year",ylab="No. of patents granted")
# there is steady increase in the number of patents being granted from the year 2011 to 2019


# patents across categories over the years 2011:2019
Year=(min(pat_us$grantyear):max(pat_us$grantyear))
Year_1=0
u=1
for(h in 1:9){
  for(j in 1:4){
    Year_1[u]=Year[h]
    u=u+1
  }
  
}
Patents_granted=0
types=c("design","plant","reissue","utility")
types_1=0
u=1
for(h in 1:9){
  for(j in 1:4){
    types_1[u]=types[j]
    u=u+1
  }
  
}
View(types_1)
k=1
for(x in 2011:2019){
  for(y in 1:4){
    c=0
    for(z in 1:nrow(pat_us)){
      if((x==pat_us$grantyear[z]) & (pat_us$ptype[z]==types[y]) )
        c=c+1
    }
    Patents_granted[k]=c
    k=k+1
  }
}
df=data.frame(Year_1,types_1,Patents_granted)
View(df)
install.packages("hrbrthemes")
library("hrbrthemes")
install.packages("viridis")
library("viridis")
df %>%
  ggplot( aes(x=Year_1, y=Patents_granted, group=types_1, color=types_1)) +
  geom_line() +
  scale_color_viridis(discrete = TRUE) +
  ggtitle("Graph") +
  theme_ipsum() +
  ylab("Patents granted")







