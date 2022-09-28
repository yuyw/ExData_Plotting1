# plot 2
print("plot2")

# read dataset
mytable <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
print(dim(mytable))

# subset by filtering date
b<-subset(a,a$Date=="1/2/2007"|a$Date=="2/2/2007")
print(dim(b))

# plotting
c<-b$Global_active_power
d<-as.numeric(as.character(c))
png("plot2.png", width=480, height=480)
datetime <- strptime(paste(b$Date, b$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime, d, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()