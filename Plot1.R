householdpowerconsumption <- "~/Desktop/Coursera/DataScienceusingRCourse4/Project1/household_power_consumption.txt"
DATA <- read.table(householdpowerconsumption, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
SUBDATA <- DATA[DATA$Date %in% c("1/2/2007", "2/2/2007"),]

globalactivepower <- as.numeric(SUBDATA$Global_active_power)

png("plot1.png", width = 480, height = 480)
hist(globalactivepower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
