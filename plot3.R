# Read data
options(stringsAsFactors = FALSE)
data <- read.csv("household_power_consumption.txt", sep=";")

# Select dates to be considered
dat <- data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]

# Convert formats
dat[c(3:9)] <- sapply(dat[c(3:9)],as.numeric)

# Plot 3
png(filename = "plot3.png",width = 480, height = 480)
plot(dat$Sub_metering_1,type="l",col="black", ylab="Energy sub metering",xlab="",xaxt="n")
axis(1,at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))
lines(dat$Sub_metering_2,type="l",col="red")
lines(dat$Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = c(1,1,1), col=c("black","red","blue"), fill="white",border = "white")
dev.off()
