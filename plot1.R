# Read data
options(stringsAsFactors = FALSE)
data <- read.csv("household_power_consumption.txt", sep=";")

# Select dates to be considered
dat <- data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]

# Convert formats
dat[c(3:9)] <- sapply(dat[c(3:9)],as.numeric)

# Plot 1
png(filename = "plot1.png",width = 480, height = 480)
hist(dat$Global_active_power, col = "red", xlab="Global active power (kilowatts)", main = "Global Active Power")
dev.off()

