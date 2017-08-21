setwd("/Users/mostafaali/Documents/Study/Data\ Science\ Specialization/Exploratory\ Analytics/Week\ 1")
pwrd <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
pwrd_2d = subset(pwrd, Date == "1/2/2007" | Date == "2/2/2007")

png("plot3.png", width = 480, height = 480, units = "px", bg = "white")
par(mar= c(4, 4, 2, 1))

pwrd_2d$Global_active_power <- as.numeric(pwrd_2d$Global_active_power)
time_col <- strptime(paste(pwrd_2d$Date, pwrd_2d$Time), format="%d/%m/%Y %H:%M:%S")

plot(time_col, pwrd_2d$Sub_metering_1, type='l', ylab="Energy sub metering", xlab="")
lines(time_col, pwrd_2d$Sub_metering_2, type='l', col="red")
lines(time_col, pwrd_2d$Sub_metering_3, type='l', col="blue")

legend("topright", 
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lty=c(1,1,1),
       col=c("black", "red", "blue"))

dev.off()
