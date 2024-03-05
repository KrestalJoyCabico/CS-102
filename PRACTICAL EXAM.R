#A

warpbreaks

#1
library(dplyr)
numeric_columns <-summarise_all(warpbreaks,function(x)is.numeric(x)|is.integer(x))

numeric_columns

#2A
warpbreaks <- data.frame(warpbreaks)

warpbreaks <-lapply(warpbreaks, as.integer)
warpbreaks

#2B
warpbreaks <- data.frame(warpbreaks)

warpbreaks <-lapply(warpbreaks, as.numeric)
warpbreaks

#B
file_path ="exampleFile.txt"

#Ba
(txt <-readLines("txt/exampleFile.txt"))
