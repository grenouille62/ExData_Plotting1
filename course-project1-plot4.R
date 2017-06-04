path = file.path(getwd())
source(file.path(path, "course-project1-loadData.R"))

# summary of 4 measurements
png(width = 480, height = 480, filename = file.path(path,"plot4.png"))
par(mfrow = c(2,2), oma =c(1,1,1,1))
plot(x = strptime(x = paste(dataUsed$Date, dataUsed$Time, sep = " "), format = "%d/%m/%Y %T"), y=dataUsed$Global_active_power, type = "l",
     ylab = "Global active power (kilowatt)", xlab = "")
plot(x = strptime(x = paste(dataUsed$Date, dataUsed$Time, sep = " "), format = "%d/%m/%Y %T"), y=dataUsed$Voltage, type = "l",
     ylab = "Voltage", xlab = "")
plot(x = strptime(x = paste(dataUsed$Date, dataUsed$Time, sep = " "), format = "%d/%m/%Y %T"), y=dataUsed$Sub_metering_1, type = "l",
     ylab = "Energy Sub metering", xlab = "")
lines(x = strptime(x = paste(dataUsed$Date, dataUsed$Time, sep = " "), format = "%d/%m/%Y %T"), y=dataUsed$Sub_metering_2, type = "l", col="red")
lines(x = strptime(x = paste(dataUsed$Date, dataUsed$Time, sep = " "), format = "%d/%m/%Y %T"), y=dataUsed$Sub_metering_3, type = "l", col="blue")
legend("topright", legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"), col=c("black", "red", "blue"), lwd=1, lty=c(1), pch = c(NA))

plot(x = strptime(x = paste(dataUsed$Date, dataUsed$Time, sep = " "), format = "%d/%m/%Y %T"), y=dataUsed$Global_reactive_power, type = "l",
     ylab = "Global reactive power", xlab = "")
dev.off()













