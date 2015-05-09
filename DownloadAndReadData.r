library(lubridate) 
library(dplyr) 


#download data and then unzip 
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip" 
setInternet2(use = TRUE) 
download.file(fileUrl,destfile="exdata_data_household_power_consumption.zip" ,method ="internal") 
unzip(zipfile="exdata_data_household_power_consumption.zip") 

variable.class<-c(rep('character',2),rep('numeric',7))
file <-read.table('household_power_consumption.txt',header=TRUE,sep=';',na.strings='?',colClasses=variable.class)
data <-file[file$Date=='1/2/2007' | file$Date=='2/2/2007',]

# add new column to the data containing the date and time toghether
data1 <- mutate(data,DateTime=dmy(data$Date)+hms(data$Time))