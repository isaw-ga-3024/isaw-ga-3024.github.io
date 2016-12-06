
# coding: utf-8

# In[164]:

#import libraries and CSVs, print to ensure they are read correctly

import pandas as pd
import sqlite3
import urllib.request

sites = pd.read_csv("https://raw.githubusercontent.com/isaw-ga-3024/isaw-ga-3024.github.io/master/stone-kelley-kelleystone/focal_csv.csv")
hierapolis = pd.read_csv("https://raw.githubusercontent.com/isaw-ga-3024/isaw-ga-3024.github.io/master/stone-kelley-kelleystone/hierapolis_tumulus.csv")
terms = pd.read_csv("https://raw.githubusercontent.com/isaw-ga-3024/isaw-ga-3024.github.io/master/stone-kelley-kelleystone/def_terms.csv")
dates = pd.read_csv("https://raw.githubusercontent.com/isaw-ga-3024/isaw-ga-3024.github.io/master/stone-kelley-kelleystone/dates.csv")

print(type(sites))
print(type(hierapolis))
print(type(terms))
print(type(dates))


# In[165]:

#importing visualization framework

import pip

import matplotlib 
import matplotlib.pyplot as plt
import numpy as np


# In[189]:

#load into memory and the data into SQL

conn = sqlite3.connect(':memory:')

sites.to_sql('sites', conn, if_exists="replace")
hierapolis.to_sql('hierapolis', conn, if_exists="replace")
terms.to_sql('terms', conn, if_exists="replace")
dates.to_sql('dates', conn, if_exists="replace")


# # Using the data to find averages and outliers in dimesions

# In[167]:

# looking at the number of burials in each tumulus

burial_data = pd.read_sql("""SELECT tumulus_name,no_burial_min 
    FROM HIERAPOLIS 
    WHERE tum_dia >= 0""", conn)

print(dia_data)


# In[168]:

#finding the average burial number
mean(burial_data)


# In[169]:

#looking at the number of burials where the tumulus diameter is known (removing dia=0)

dia_data = pd.read_sql("""SELECT tumulus_name,no_burial_min,tum_dia 
    FROM HIERAPOLIS 
    WHERE tum_dia > 0""", conn)

print(dia_data)


# In[170]:

#finding the average tumulus diameter (when dia=0 removed)

dia_data2 = pd.read_sql("""SELECT tumulus_name,tum_dia 
    FROM HIERAPOLIS 
    WHERE tum_dia > 0""", conn)

mean(dia_data2)


# In[171]:

#comparing single chamber tumuli with known measurements and their averages

single_data = pd.read_sql("""SELECT tumulus_name,tumulus_type,tum_dia,cham1_l,cham1_w,anti_l,anti_w,no_burial_min 
    FROM HIERAPOLIS
    WHERE tum_dia > 0 AND anti_l > 0 AND anti_w > 0 AND tumulus_type = 'chamber'""", conn)

print(single_data)

mean(single_data)


# In[172]:

#comparing dual chamber tumuli with known measurements and their averages

dual_data = pd.read_sql("""SELECT tumulus_name,tumulus_type,tum_dia,cham1_l,cham1_w,cham2_l,cham2_w,anti_l,anti_w,no_burial_min 
    FROM HIERAPOLIS
    WHERE tum_dia > 0 AND anti_l > 0 AND anti_w > 0 AND tumulus_type = 'dual chamber'""", conn)

print(dual_data)

mean(dual_data)


# # Combining tables

# In[231]:

#setting date words to their respective starting date numerals

early_date = pd.read_sql("""SELECT hierapolis.tumulus_name, hierapolis.earliest_date, dates.early_no 
    FROM HIERAPOLIS, DATES
    WHERE hierapolis.earliest_date=dates.date_words 
    ORDER BY tumulus_name""", conn)

late_date = pd.read_sql("""SELECT hierapolis.tumulus_name, hierapolis.latest_date, dates.early_no 
    FROM HIERAPOLIS, DATES
    WHERE hierapolis.latest_date=dates.date_words 
    ORDER BY tumulus_name""", conn)

print(early_date)
print(late_date)


# # Visualizing the data

# In[174]:

#number of tumuli with specific minimum number of burials

tumulus_size = hierapolis['tum_dia'].dropna()
burial_numbers = hierapolis['no_burial_min'].dropna()

tumulus_size.groupby(burial_numbers).count().sort_values().plot.bar()


# In[212]:

#number of tumuli with specific minimum number of burials

tumulus_size = hierapolis['tum_dia'].dropna()
burials = hierapolis['no_burial_min'].dropna()

burials.groupby(burials).count().plot.pie()


# In[232]:

#tumulus diameter grouped by date 

date = hierapolis['earliest_date'].dropna()
tum_size = hierapolis['tum_dia'].dropna()

tum_size.groupby(date).plot.box()


# # Text Data

# In[226]:

#grave goods

gg_data = pd.read_sql("""SELECT tumulus_name,earliest_date,good_types 
    FROM HIERAPOLIS """, conn)
print(gg_data)


# In[222]:

#construction methods and materials

con_data = pd.read_sql("""SELECT tumulus_name,construction,material
    FROM HIERAPOLIS""", conn)
print(con_data)


# In[224]:

#tumulus architectural elements

arch_data = pd.read_sql("""SELECT tumulus_name,tumulus_type,tum_dia,arch_other1,arch_other2,arch_other3
    FROM HIERAPOLIS """, conn)
print(arch_data)


# In[225]:

#terminology definitions

print(terms)


# # Link to Carto Map

# In[216]:

https://kelleystone.carto.com/viz/8909d1fc-aa9d-11e6-a9af-0ee66e2c9693/public_map


# In[217]:

import webbrowser
webbrowser.open("https://kelleystone.carto.com/viz/8909d1fc-aa9d-11e6-a9af-0ee66e2c9693/public_map")

