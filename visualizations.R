library(wordcloud)
library(ggplot)

#wordcloud visualizations
wordcloud(corpus.rapTweets,min.freq = 18, max.words=200, random.order = FALSE,colors=brewer.pal(8, "Dark2"))
wordcloud(corpus.warTweets,min.freq = 20, max.words=200, random.order = FALSE,colors=brewer.pal(8, "Dark2"))

#plotting our sentiments
ggplot(data=sentimentW, aes(x=sentiment, y=Score))+geom_bar(aes(fill=sentiment),stat="identity")+theme(legend.position="none")+xlab("Sentiments")+ylab("scores")+
  ggtitle("Sentiments of Tweets behind Warriors")

ggplot(data=sentimentR, aes(x=sentiment, y=Score))+geom_bar(aes(fill=sentiment),stat="identity")+theme(legend.position="none")+xlab("Sentiments")+ylab("scores")+
  ggtitle("Sentiments of Tweets behind Raptors")