path = file.path(getwd())
source(file.path(path, "course-project1-loadData.R"))
#Global active power
png(width = 480, height = 480, filename = file.path(path,"plot1.png"))
hist(x=dataUsed$Global_active_power, freq = TRUE, main = "Global active power", xlab = "Global active power (kilowatt)", col = "red")
dev.off()
