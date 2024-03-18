library(readxl)
library(lubridate)
library(dplyr)

# Reading excel
Mergedmovies_cleaned <- read_excelMergedmovies_cleaned <- read_excel("moviereviews_cleaned/Mergedmovies_cleaned.xlsx")
Mergedmovies_cleaned

# Checking structure
str(Mergedmovies_cleaned)

# Cleaning dates
Mergedmovies_cleaned$date <- as.Date(Mergedmovies_cleaned$date, format = "%d-%m-%Y")
Mergedmovies_cleaned$date <- as.POSIXct(Mergedmovies_cleaned$date)

# Converting to lowercase
Mergedmovies_cleaned$Title <- tolower(Mergedmovies_cleaned$title)
Mergedmovies_cleaned$Username <- tolower(Mergedmovies_cleaned$username)
Mergedmovies_cleaned$Content <- tolower(Mergedmovies_cleaned$content)

# Handling missing values in Stars column
Mergedmovies_cleaned$stars <- as.numeric(gsub("/.*", "", Mergedmovies_cleaned$stars))
Mergedmovies_cleaned$stars <- ifelse(is.na(Mergedmovies_cleaned$stars), mean(Mergedmovies_cleaned$stars, na.rm = TRUE), Mergedmovies_cleaned$stars)

# Writing cleaned data to CSV
write.csv(Mergedmovies_cleaned, file = "Mergedmovies_cleaned.csv")
