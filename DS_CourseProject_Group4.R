## DATA SCIENCE COURSE PROJECT GROUP 4 ##

library("twitteR") #Load library
#Setting Connection with Twitter API
consumer_key<- #Enter you credentials
consumer_secret<-  #Enter you credentials
access_token<-  #Enter you credentials
access_secret<-  #Enter you credentials

setup_twitter_oauth(consumer_key,consumer_secret,access_token,access_secret)
origop <- options("httr_oauth_cache")
options(httr_oauth_cache = TRUE)

#Pulling tweets of India
tweets<- searchTwitter('India', n=1000, lang = 'en')
tweets
India.df <- twListToDF(tweets) #Tweets to data frame format

library(openxlsx)
write.xlsx(India.df,"D:/DS Lab/course project/R Files_zip.zip/R Files/IndiaTwitts.xlsx") #Setting csv file directory
str(tweets)

#Build corpus
library(tm) #text mining
corpus<- iconv(India.df$text, to="UTF-8")
corpus<- Corpus(VectorSource(corpus))
inspect(corpus[1:10])

#Data Cleaning
corpus<- tm_map(corpus,tolower) #Convert to lower case
inspect(corpus[1:10])

corpus<- tm_map(corpus, removePunctuation) #Remove punctuation
inspect(corpus[1:10])

corpus<- tm_map(corpus, removeNumbers) #Remove numbers
inspect(corpus[1:10])

cleanset<- tm_map(corpus,removeWords, stopwords('english')) #Remove common English words
inspect(cleanset[1:10])

removeURL<- function(x) gsub('http[[:alnum:]]*','',x)
cleanset<- tm_map(cleanset, content_transformer(removeURL)) #Remove URLs
inspect(cleanset[1:5])

cleanset<- tm_map(cleanset, removeWords, c('India')) #Remove specific word
cleanset<- tm_map(cleanset, stripWhitespace) #Remove white spaces
inspect(cleanset[1:5])

#Pulling tweets of America
tweets<- searchTwitter('America', n=1000, lang = 'en')
tweets
America.df <- twListToDF(tweets) #Tweets to data frame format

library(xlsx)
write.xlsx(America.df,"D:/DS Lab/course project/R Files_zip.zip/R Files/IndiaTwitts.xlsx") #Setting csv file directory
str(tweets)

#Build corpus
library(tm) #text mining
corpus1<- iconv(America.df$text, to="UTF-8")
corpus1<- Corpus(VectorSource(corpus1))
inspect(corpus1[1:10])

#Data Cleaning
corpus1<- tm_map(corpus1,tolower) #Convert to lower case
inspect(corpus1[1:10])

corpus1<- tm_map(corpus1, removePunctuation) #Remove punctuation
inspect(corpus1[1:10])

corpus1<- tm_map(corpus1, removeNumbers) #Remove numbers
inspect(corpus1[1:10])

cleanset1<- tm_map(corpus1,removeWords, stopwords('english')) #Remove common English words
inspect(cleanset1[1:10])

removeURL1<- function(x) gsub('http[[:alnum:]]*','',x)
cleanset1<- tm_map(cleanset1, content_transformer(removeURL1)) #Remove URLs
inspect(cleanset1[1:5])

cleanset1<- tm_map(cleanset1, removeWords, c('India')) #Remove specific word
cleanset1<- tm_map(cleanset1, stripWhitespace) #Remove white spaces
inspect(cleanset1[1:5])

#Pulling tweets of Pakistan
tweets<- searchTwitter('Pakistan', n=1000, lang = 'en')
tweets
Pakistan.df <- twListToDF(tweets) #Tweets to data frame format

library(xlsx)
write.xlsx(Pakistan.df,"D:/DS Lab/course project/R Files_zip.zip/R Files/PakistanTwitts.xlsx") #Setting csv file directory
str(tweets)

#Build corpus
library(tm) #text mining
corpus2<- iconv(Pakistan.df$text, to="UTF-8")
corpus2<- Corpus(VectorSource(corpus2))
inspect(corpus2[1:10])

#Data Cleaning
corpus2<- tm_map(corpus2,tolower) #Convert to lower case
inspect(corpus2[1:10])

corpus2<- tm_map(corpus2, removePunctuation) #Remove punctuation
inspect(corpus2[1:10])

corpus2<- tm_map(corpus2, removeNumbers) #Remove numbers
inspect(corpus2[1:10])

cleanset2<- tm_map(corpus2,removeWords, stopwords('english')) #Remove common English words
inspect(cleanset2[1:10])

removeURL2<- function(x) gsub('http[[:alnum:]]*','',x)
cleanset2<- tm_map(cleanset2, content_transformer(removeURL2)) #Remove URLs
inspect(cleanset2[1:5])

cleanset2<- tm_map(cleanset2, removeWords, c('Pakistan')) #Remove specific word
cleanset2<- tm_map(cleanset2, stripWhitespace) #Remove white spaces
inspect(cleanset1[1:5])

#Pulling tweets of Japan
tweets<- searchTwitter('Japan', n=1000, lang = 'en')
tweets
Japan.df <- twListToDF(tweets) #Tweets to data frame format

library(xlsx)
write.xlsx(America.df,"D:/DS Lab/course project/R Files_zip.zip/R Files/JapanTwitts.xlsx") #Setting csv file directory
str(tweets)

#Build corpus
library(tm) #text mining
corpus3<- iconv(Japan.df$text, to="UTF-8")
corpus3<- Corpus(VectorSource(corpus1))
inspect(corpus3[1:10])

#Data Cleaning
corpus3<- tm_map(corpus3,tolower) #Convert to lower case
inspect(corpus3[1:10])

corpus3<- tm_map(corpus3, removePunctuation) #Remove punctuation
inspect(corpus3[1:10])

corpus3<- tm_map(corpus3, removeNumbers) #Remove numbers
inspect(corpus3[1:10])

cleanset3<- tm_map(corpus3,removeWords, stopwords('english')) #Remove common English words
inspect(cleanset3[1:10])

removeURL3<- function(x) gsub('http[[:alnum:]]*','',x)
cleanset3<- tm_map(cleanset3, content_transformer(removeURL3)) #Remove URLs
inspect(cleanset3[1:5])

cleanset3<- tm_map(cleanset3, removeWords, c('Japan')) #Remove specific word
cleanset3<- tm_map(cleanset3, stripWhitespace) #Remove white spaces
inspect(cleanset3[1:5])

#Pulling tweets of Germany
tweets<- searchTwitter('Germany', n=1000, lang = 'en')
tweets
Germany.df <- twListToDF(tweets) #Tweets to data frame format

library(xlsx)
write.xlsx(Germanay.df,"D:/DS Lab/course project/R Files_zip.zip/R Files/GermanyTwitts.xlsx") #Setting csv file directory
str(tweets)

#Build corpus
library(tm) #text mining
corpus4<- iconv(Germany.df$text, to="UTF-8")
corpus4<- Corpus(VectorSource(corpus4))
inspect(corpus4[1:10])

#Data Cleaning
corpus4<- tm_map(corpus4,tolower) #Convert to lower case
inspect(corpus4[1:10])

corpus4<- tm_map(corpus4, removePunctuation) #Remove punctuation
inspect(corpus4[1:10])

corpus4<- tm_map(corpus4, removeNumbers) #Remove numbers
inspect(corpus4[1:10])

cleanset4<- tm_map(corpus4,removeWords, stopwords('english')) #Remove common English words
inspect(cleanset4[1:10])

removeURL4<- function(x) gsub('http[[:alnum:]]*','',x)
cleanset4<- tm_map(cleanset4, content_transformer(removeURL4)) #Remove URLs
inspect(cleanset4[1:5])

cleanset4<- tm_map(cleanset4, removeWords, c('India')) #Remove specific word
cleanset4<- tm_map(cleanset4, stripWhitespace) #Remove white spaces
inspect(cleanset4[1:5])

