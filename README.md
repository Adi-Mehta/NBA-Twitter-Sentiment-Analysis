# NBA Twitter Sentiment Analysis in R
This is a project analyzing the sentiment behind the two teams in the NBA championship, the Warriors and the Raptors; using API data extraction and text mining skills in R. 
## Dependencies
* twitteR
* tm
* NLP
* wordcloud
* ROAuth
* syuzhet
* ggplot
## Organization
All the code in contained within an R project file: 
NBATweets.Rproj
However, I have separated the project into the following steps for ease:
* twitterAuth.R: Contains the nececssary information to authorize the Twitter API
* twitterSearch.R: Contains the search query terms to extract Warriors and Raptors tweets 
* cleanTweets.R: Contains the script to clean the tweets along with convert them to corpus
* sentiment.R: Extracting the sentiment of each set of tweets
* visualizations.R: Contains several visualizations of Sentiment breakdown, along with wordclouds of frequency
## Results
