#load data
import os
import pandas as pd
import numpy as np
os.chdir("C:/Users/Lohith/Documents")
mydata=pd.read_csv("customer_reviews.csv")
#nltk - natural language toolkit
import nltk
nltk.download("vader_lexicon")
#call the function to analyse sentiment
from nltk.sentiment.vader import SentimentIntensityAnalyzer
senti_analysis=SentimentIntensityAnalyzer()
#check sentiment of the first feedback
senti_analysis.polarity_scores(mydata.iloc[50,1])
print(mydata.iloc[50,1])
#check the sentiment of text
mydata["score"]=mydata["text"].apply(lambda x:senti_analysis.polarity_scores(x))
#extracting compound score
mydata["compound_score"]=mydata["score"].apply(lambda x:x["compound"])
mydata
mydata["positive_negative"]=mydata["compound_score"].apply(lambda x:np.where(x>0,"Positive","Negative"))
##count of negative and positive feedback
mydata["positive_negative"].value_counts()
positive_data=mydata.query("positive_negative=='Positive'")
print(positive_data)
