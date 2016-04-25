data <- read.table("./data/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)
subData <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
subData$Global_active_power <- as.numeric(subData$Global_active_power)
datetime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png(filename="plot2.png" , width=480, height=480)
plot(datetime, subData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
