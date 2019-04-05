#-----------------------------------------------------
# Clean Metro Police Service Datasets
#-----------------------------------------------------
# This script cleans three separate raw data files.
# The first is the most recent 2 years the MPS has on file
# The second is Crime data with the new Warding (April 2010 Onwards)
# The third is Crime data with the old warding (2001--2010)
#-----------------------------------------------------
# This script will create Long clean data for these london sets
# Github has a strict 100MB limit on files
#-----------------------------------------------------
library(tidyverse)
library(lubridate)
library(reshape2) # Don't judge 
#------------------------------------------
# Import Data
crime_data_ward <- read_csv(file = "datasets/datathon-2019-04-24/crime_in_london/raw/MPS Ward Level Crime (most recent 24 months).csv")

#------------------------------------------
# Melt Data 

crime_long <- melt(crime_data_ward, 
                   id.vars = c("MajorText",
                               "MinorText",
                               "WardName",
                               "WardCode",
                               "LookUp_BoroughName"))

# -------------------------------------------------
# Clean Names
crime_long <- crime_long %>%
  rename(yearmonth = variable,
         count = value)

# Clean Dates
crime_long <- crime_long %>%
  mutate(year = substr(yearmonth, 1,4),
         month = substr(yearmonth, 5,6),
         year_month = as.character(paste0(year,"-",month)),
         year_month = ymd(year_month, truncated = 1))
#-----------------------------------------------------
# Write Data 

write_csv(x = crime_long, path = "datasets/datathon-2019-04-24/crime_in_london/cleaned/long_london_crime_2017-2019.csv")

#------------------------------------------------------
# Import Historic New Ward Data (April 2010 -- Onwards)

historic_new_crime_data_ward <- read_csv(file = "datasets/datathon-2019-04-24/crime_in_london/raw/MPS_Ward_Level_Crime_Historic_NewWard.csv")

#------------------------------------------------------

historic_new_crime_long <- melt(historic_new_crime_data_ward, 
                   id.vars = c("WardCode",
                               "Ward Name",
                               "Borough",
                               "Major Category",
                               "Minor Category"))

# -------------------------------------------------
# Clean Names
historic_new_crime_long <- historic_new_crime_long %>%
  rename(yearmonth = variable,
         count = value,
         MajorText = `Major Category`,
         MinorText = `Minor Category`)

# Clean Dates
historic_new_crime_long <- historic_new_crime_long %>%
  mutate(year = substr(yearmonth, 1,4),
         month = substr(yearmonth, 5,6),
         year_month = as.character(paste0(year,"-",month)),
         year_month = ymd(year_month, truncated = 1))

#-----------------------------------------------------
# Write Data 

write_csv(x = historic_new_crime_long, path = "datasets/datathon-2019-04-24/crime_in_london/cleaned/historic_new_crime_2010-Current.csv")



#------------------------------------------------------
# Import Historic Old Ward Data (2001--2010)

historic_old_crime_data_ward <- read_csv(file = "datasets/datathon-2019-04-24/crime_in_london/raw/MPS_Ward_Level_Crime_Historic_OldWardtoMar2010.csv")

historic_old_crime_long <- melt(historic_old_crime_data_ward, 
                                id.vars = c("Ward Code",
                                            "Ward Name",
                                            "Borough",
                                            "Major Category",
                                            "Minor Category"))

# -------------------------------------------------
# Clean Names
historic_old_crime_long <- historic_old_crime_long %>%
  rename(yearmonth = variable,
         count = value,
         MajorText = `Major Category`,
         MinorText = `Minor Category`)

# Clean Dates
historic_old_crime_long <- historic_old_crime_long %>%
  mutate(year = substr(yearmonth, 1,4),
         month = substr(yearmonth, 5,6),
         year_month = as.character(paste0(year,"-",month)),
         year_month = ymd(year_month, truncated = 1))

#-----------------------------------------------------
# Write Data 

write_csv(x = historic_old_crime_long, path = "datasets/datathon-2019-04-24/crime_in_london/cleaned/historic_old_crime_2001-2010.csv")

#--------------------------------------------------------------------
names(historic_old_crime_long)

historic_old_crime_long <- historic_old_crime_long %>%
  rename(WardCode = `Ward Code`)

crime_long <- crime_long %>%
  select(WardCode, WardName, LookUp_BoroughName, MajorText, MinorText, 
         yearmonth, count, year, month, year_month)

crime_long <- crime_long %>%
  rename(`Ward Name` = WardName,
         Borough = LookUp_BoroughName)

total_london_crime <- rbind(historic_old_crime_long, historic_new_crime_long, crime_long)

write_csv2(x = total_london_crime, path = "datasets/datathon-2019-04-24/crime_in_london/cleaned/total_london_crime_cleaned.csv")
