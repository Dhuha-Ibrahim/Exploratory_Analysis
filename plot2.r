
source("DownloadAndReadData.r")
png(filename='plot2.png',width=480,height=480,units='px')
# plot data
plot(data1$DateTime,data$Global_active_power,ylab = "Global Active Power(Kilowat)",xlab = "", type='l')
# close device
x<-dev.off()