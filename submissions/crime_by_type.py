# -*- coding: utf-8 -*-
"""dat 4 toynbee crime final.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1HJY4SUA0fI_Xo0-TZHz-STyJiOUmLxLQ
"""

import matplotlib.pyplot as plt #to define plot parameters
import seaborn as sns #to graphical plots
import numpy as np #to math
import pandas as pd
import datetime as dt
import matplotlib.ticker as ticker

crime_df = pd.read_csv('https://raw.githubusercontent.com/research-at-toynbee-hall/datathons/master/datasets/datathon-2019-04-24/crime_in_london/cleaned/long_london_crime_2017-2019.csv')

crime_df['yearmonthday'] = crime_df['year_month'].apply(lambda x: dt.datetime.strptime(x, '%Y-%m-%d'))
crime_df['year'] = crime_df['yearmonthday'].dt.year

#changing the format to datetime so we can plot the chart
crime_df1 = crime_df.copy()
crime_df1.index = pd.to_datetime(crime_df1['yearmonthday'], format = '%Y-%m-%d')

#Grouping the crimes by the date
crimes_groupby = crime_df1.groupby([pd.TimeGrouper('2M'), 'MajorText'])
crime_data = crimes_groupby['MajorText'].count().rename('Count')

#Creating a dataframe (for use in plotting) 
crimes_groupby = crime_df1.groupby([pd.TimeGrouper('2M'), 'MajorText'])
crime_data = crimes_groupby['MajorText'].count().rename('Count')
crime_data = crime_data.unstack()

#Plot of the number of crimes per type of crime
plt.figure(figsize=(10, 7))
crime_df1.groupby([crime_df1['MajorText']]).size().sort_values(ascending=True).plot(kind='barh')
plt.title('Number of Crimes by the type of crime')
plt.ylabel('Type of crime')
plt.xlabel('Number of crime by type')
plt.show()
