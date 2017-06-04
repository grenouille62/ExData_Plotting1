path = file.path(getwd())
source(file.path(path, "course-project1-loadData.R"))
#Global active power by datetime
png(width = 480, height = 480, filename = file.path(path,"plot2.png"))
plot(x = strptime(x = paste(dataUsed$Date, dataUsed$Time, sep = " "), format = "%d/%m/%Y %T"), y=dataUsed$Global_active_power, type = "l",
     ylab = "Global active power (kilowatt)", xlab = "")
dev.off()
             





