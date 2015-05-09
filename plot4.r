source("DownloadAndReadData.r")
png(filename='plot4.png',width=480,height=480,units='px')

par(mfrow = c(2, 2))
plot(data1$DateTime,data$Global_active_power,ylab = "Global Active Power",xlab = "", type='l')
plot(data1$DateTime,data1$Voltage,ylab='Voltage', xlab="datetime", type='l')
plot(data1$DateTime,data1$Sub_metering_1,xlab="",ylab="Energy sub metering",type="l",col="black") 
lines(data1$DateTime,data1$Sub_metering_2,col="red") 
lines(data1$DateTime,data1$Sub_metering_3,col="blue") 

#add legend 
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1) 

plot(data1$DateTime,data$Global_reactive_power,ylab = "Global_reactive_power",xlab = "datetime", type='l')
x<-dev.off()