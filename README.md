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
All the code in contained within an R project file with steps: 

*NBATweets.RMD*

However, I have separated the project into the following steps for ease:
* *twitterAuth.R*: Contains the nececssary information to authorize the Twitter API
* *twitterSearch.R*: Contains the search query terms to extract Warriors and Raptors tweets 
* *cleanTweets.R*: Contains the script to clean the tweets along with convert them to corpus
* *sentiment.R*: Extracting the sentiment of each set of tweets
* *visualizations.R*: Contains several visualizations of Sentiment breakdown, along with wordclouds of frequency
## Results
Wordcloud for the search term Warriors:
![Warrioswordcloud](https://user-images.githubusercontent.com/34528421/60382507-c5cdc400-9a18-11e9-86fd-bb4f13656025.jpeg)

Wordcloud for the search term Raptors:
![raptorswordcloud](https://user-images.githubusercontent.com/34528421/60382545-50aebe80-9a19-11e9-9081-83f3f873e4f2.jpeg)

Sentiment Analysis for Warriors:
![sentiment warriors](https://user-images.githubusercontent.com/34528421/60382550-6a500600-9a19-11e9-8c9a-25a705cc02e4.jpeg)

Sentiment Analysis for Raptors:
![raptors sentiment](https://user-images.githubusercontent.com/34528421/60382551-6cb26000-9a19-11e9-9255-88091c2b9bdf.jpeg)
