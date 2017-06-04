library(sqldf)
#Download and unzip Datata
path = file.path(getwd())
destFile <- file.path(path,"household_power_consumption.zip")
unzipDir <- file.path(path,"household_power_consumption")


if(!file.exists(destFile)) {
  download.file(url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", method = "curl", 
                destfile = destFile)
  unzip(destFile,exdir=unzipDir)
}

if (!exists("data")) {
data <- read.delim(file = file.path(unzipDir,"household_power_consumption.txt"), header = TRUE, sep = ";", na.strings = "?",
                   colClasses = c("Date"="character",
                                  "Time"="character",
                                  "Global_active_power" ="numeric",
                                  "Global_reactive_power" ="numeric",
                                  "Voltage"="numeric",
                                  "Global_intensity"="numeric",
                                  "Sub_metering_1"="numeric",
                                  "Sub_metering_2"="numeric",
                                  "Sub_metering_3"="numeric"))
}
if (!exists("dataUsed")) {
  dataUsed <- data[strptime(data[,"Date"],'%d/%m/%Y') >= strptime(x="2007-02-01", format = "%Y-%m-%d") & strptime(data[,"Date"],'%d/%m/%Y') <= strptime(x="2007-02-02", format = "%Y-%m-%d"),]
}













