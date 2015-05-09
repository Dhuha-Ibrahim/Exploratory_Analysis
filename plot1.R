

source("DownloadAndReadData.r")
png(filename='plot1.png',width=480,height=480,units='px')
hist(data$Global_active_power, col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)")
x<-dev.off()

