path = file.path(getwd())
source(file.path(path, "course-project1-loadData.R"))

#Energy Sub_metering_1 by day of week
png(width = 480, height = 480, filename = file.path(path,"plot3.png"))
plot(x = strptime(x = paste(dataUsed$Date, dataUsed$Time, sep = " "), format = "%d/%m/%Y %T"), y=dataUsed$Sub_metering_1, type = "l",
     ylab = "Energy Sub metering", xlab = "")
lines(x = strptime(x = paste(dataUsed$Date, dataUsed$Time, sep = " "), format = "%d/%m/%Y %T"), y=dataUsed$Sub_metering_2, type = "l", col="red")
lines(x = strptime(x = paste(dataUsed$Date, dataUsed$Time, sep = " "), format = "%d/%m/%Y %T"), y=dataUsed$Sub_metering_3, type = "l", col="blue")
legend("topright", legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"), col=c("black", "red", "blue"), lwd=1, lty=c(1), pch = c(NA))
dev.off()





