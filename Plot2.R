householdpowerconsumption <- "~/Desktop/Coursera/DataScienceusingRCourse4/Project1/household_power_consumption.txt"
DATA <- read.table(householdpowerconsumption, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
SUBDATA <- DATA[DATA$Date %in% c("1/2/2007", "2/2/2007"),]

datetime <- strptime(paste(SUBDATA$Date,SUBDATA$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
globalactivepower <- as.numeric(SUBDATA$Global_active_power)

png("plot2.png", width = 480, height = 480)
plot(datetime, globalactivepower, type = "l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
