data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings=("?"))
data$DateTime <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$DateTime)
d12 <- data[(data$Date == as.Date("2007-02-01") | data$Date == as.Date("2007-02-02")),]
png(file="plot2.png")
with(d12, plot(DateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()
