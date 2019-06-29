library(syuzhet)

#extracting sentiment for Warriors
warSentiment <- get_nrc_sentiment(warText)
sentimentW <-data.frame(colSums(warSentiment[,]))
names(sentimentW) <-"Score"
sentimentW <-cbind("sentiment"=rownames(sentimentW),sentimentW)
rownames(sentimentW)<-NULL

#extrating sentiment for Raptors
rapSentiment <- get_nrc_sentiment(rapText)
sentimentR <-data.frame(colSums(rapSentiment[,]))
names(sentimentR) <-"Score"
sentimentR <-cbind("sentiment"=rownames(sentimentR),sentimentR)
rownames(sentimentR)<-NULL