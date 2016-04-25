data <- read.table("./data/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)
subData <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
subData$Global_active_power <- as.numeric(subData$Global_active_power)
png(filename="plot1.png" , width=480, height=480)
hist(subData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
