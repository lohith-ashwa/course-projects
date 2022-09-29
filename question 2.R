library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer") 
getwd()
text=readLines(file.choose())
View(text)
text1=Corpus(VectorSource(text))
inspect(text1)
# converting to lower case
text1=tm_map(text1,content_transformer(tolower))
inspect(text1) #to check if its become lower case or not
# removing numbers
text1=tm_map(text1,removeNumbers)
inspect(text1)
# removing punctuation
text1=tm_map(text1,removePunctuation)
inspect(text1)
# remove stop words
text1=tm_map(text1,removeWords,stopwords("english"))
inspect(text1)
# remove white space
text1=tm_map(text1,stripWhitespace)
inspect(text1)
tdm=TermDocumentMatrix(text1)
inspect(tdm)
name=as.matrix(tdm)
View(name)
num=sort(rowSums(name),decreasing = TRUE) # if FALSE is used it will come in increasing order of frequency
View(num)
# just adding another column with the word and giving a title to the frequency column
a1=data.frame(word=names(num),freq=num) 
View(a1)
set.seed(1111)
wordcloud(words=a1$word,freq =a1$freq,min.freq = 1,max.words = 200,random.order = FALSE,rot.per = 0.35,colors=brewer.pal(8,"Dark2"),scale=c(3,0.4))
# Using the scale parameter to adjust the size of the frame of the word cloud 
