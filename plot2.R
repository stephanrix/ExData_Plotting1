# Read data
options(stringsAsFactors = FALSE)
data <- read.csv("household_power_consumption.txt", sep=";")

# Select dates to be considered
dat <- data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]

# Convert formats
dat[c(3:9)] <- sapply(dat[c(3:9)],as.numeric)


# Plot 2
png(filename = "plot2.png",width = 480, height = 480)
plot(dat$Global_active_power, type = "l", ylab="Global Active Power (kilowatts)", xlab="",xaxt="n")
axis(1,at=c(1,1440,2880), labels=c("Thu","Fri","sat"))
dev.off()

