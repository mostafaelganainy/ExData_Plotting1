setwd("/Users/mostafaali/Documents/Study/Data\ Science\ Specialization/Exploratory\ Analytics/Week\ 1")
png("plot1.png", width = 480, height = 480, units = "px", bg = "white")
par(mar= c(4, 4, 2, 1))

pwrd <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)
pwrd_2d = subset(pwrd, Date == "1/2/2007" | Date == "2/2/2007")

pwrd_2d$Global_active_power <- as.numeric(pwrd_2d$Global_active_power)

hist(pwrd_2d$Global_active_power, main = "Global Active Power", xlab="Global Active Power (kilowatts", col="red")
dev.off()


