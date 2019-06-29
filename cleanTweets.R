library(tm)

cleanText <- function(x) {
  x$text <- tolower(x$text)    #covert to lowercase
  x$text <- gsub("rt","", x$text)    #remove the rt
  x$text <- gsub("\\p{So}|\\p{Cn}", "", x$text, perl = TRUE)    #
  x$text <- gsub("[^[:alnum:]///' ]", "", x$text)   
  x$text <- gsub("&amp", "", x$text)   #remove the &amp
  x$text <- gsub("&amp", "", x$text)    #must do it twice
  x$text <- gsub("http[^[:space:]]*","",x$text)    #remove any links
}

warText <- cleanText(warTweets)
rapText <- cleanText(rapTweets)

cleanCorpus <- function(x) {
  x <- tm_map(x, removePunctuation)    #remove punctuation
  x <- tm_map(x, content_transformer(removeEmoji))    #remove emojis
  x <- tm_map(x,content_transformer(removeSpecialChar))    #remove special characters
  x <- tm_map(x, content_transformer(removeURL))    #remove URLs
  x <- tm_map(x, content_transformer(stripWhitespace))   #strip the whitespace
}
warText <- iconv(warText, "ASCII", "UTF-8", sub="byte")   #before converting to corpus
rapText <- iconv(rapText, "ASCII", "UTF-8", sub="byte")   #before converting to corpus

#corpus creation
corpus.warTweets <- Corpus(VectorSource(warText))    #corpus creation
corpus.rapTweets <- Corpus(VectorSource(rapText))    #corpus creation
corpus.warTweets <- tm_map(corpus.warTweets, removeWords, stopwords("english"))     #remove common stopwords
corpus.rapTweets <- tm_map(corpus.rapTweets, removeWords, stopwords("english"))     #remove common stopwords

corpus.warTweets <- cleanCorpus(corpus.warTweets)    
corpus.rapTweets <- cleanCorpus(corpus.rapTweets)

#tdm conversion
wTdm <- TermDocumentMatrix(corpus.warTweets)
rTdm <- TermDocumentMatrix(corpus.rapTweets)
wTdm <- as.matrix(wTdm)
rTdm <- as.matrix(rTdm)
r<-sort(rowSums(rTdm),decreasing=TRUE)
w<-sort(rowSums(wTdm),decreasing=TRUE)