library(twitteR)

tweetsW <- searchTwitter("Warriors", n=1200,lang="en")    #retrieving 1200 tweets about warriors
tweetsR <- searchTwitter("Raptors",n=1200, lang="en")    #retrieving 1200 tweets about the raptors
warTweets <- twListToDF(tweetsW)
rapTweets <- twListToDF(tweetsR)