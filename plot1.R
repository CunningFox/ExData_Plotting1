data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings=("?"))
data$Date <- as.Date(strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S"))
d12 <- data[(data$Date == as.Date("2007-02-01") | data$Date == as.Date("2007-02-02")),]
png(file="plot1.png")
hist(d12$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
