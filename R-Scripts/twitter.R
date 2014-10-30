#I used this website for the main recipe to get my Twitter authorization: http://www.datablog.sytpp.net/2014/04/scraping-twitter-with-r-a-how-to/
rm(list=ls())
library(twitteR)
library(RCurl)
library(ROAuth)

        consumerKey <- "5yViSuSbNLBBDaUZA03wQ"
        consumerSecret <- "EuLTI61ncd8O7mmdpiStR86UtoXPgo6LMiFphEKeM"
        reqURL <- "https://api.twitter.com/oauth/request_token"
        accessURL <- "https://api.twitter.com/oauth/access_token"
        authURL <- "http://api.twitter.com/oauth/authorize"
        twitCred <- OAuthFactory$new(consumerKey=consumerKey,
                             consumerSecret=consumerSecret,
                             requestURL=reqURL,
                             accessURL=accessURL,
                             authURL=authURL)

twitCred$handshake()

#Retrieve the first 200 tweets for the folowing profiles
johnTweets <- userTimeline("John", n = 200)
johnDataFrame <- twListToDF(johnTweets)
write.csv(johnDataFrame, file="john.csv")
head(johnDataFrame)

barryTweets <- userTimeline("barrybateman", n = 200)
barryDataFrame <- twListToDF(barryTweets)
write.csv(barryDataFrame, file="barry.csv")
head(barryDataFrame)

robbieTweets <- userTimeline("702JohnRobbie", n = 200)
robbieDataFrame <- twListToDF(robbieTweets)
write.csv(robbieDataFrame, file="robbie.csv")
head(robbieDataFrame)

rediTweets <- userTimeline("RediTlhabi", n = 200)
rediDataFrame <- twListToDF(rediTweets)
write.csv(rediDataFrame, file="robbie.csv")
head(rediDataFrame)

ferialTweets <- userTimeline("ferialhaffajee", n = 200)
ferialDataFrame <- twListToDF(ferialTweets)
write.csv(ferialDataFrame, file="ferial.csv")
head(ferialDataFrame)

leanneTweets <- userTimeline("LeanneManas", n = 200)
leanneDataFrame <- twListToDF(leanneTweets)
write.csv(leanneDataFrame, file="leanne.csv")
head(leanneDataFrame)

mandyTweets <- userTimeline("MandyWiener", n = 200)
mandyDataFrame <- twListToDF(mandyTweets)
write.csv(mandyDataFrame, file="mandy.csv")
head(mandyDataFrame)

ulrichTweets <- userTimeline("UlrichJvV", n = 200)
ulrichDataFrame <- twListToDF(ulrichTweets)
write.csv(ulrichDataFrame, file="ulrich.csv")
head(ulrichDataFrame)

stephenTweets <- userTimeline("StephenGrootes", n = 200)
stephenDataFrame <- twListToDF(stephenTweets)
write.csv(stephenDataFrame, file="stephan.csv")
head(stephenDataFrame)

akiTweets <- userTimeline("akianastasiou", n = 200)
akiDataFrame <- twListToDF(akiTweets)
write.csv(akiDataFrame, file="aki.csv")
head(akiDataFrame)

sportTweets <- userTimeline("Sport24News", n = 200)
sportDataFrame <- twListToDF(sportTweets)
write.csv(sportDataFrame, file="sport.csv")
head(sportDataFrame)