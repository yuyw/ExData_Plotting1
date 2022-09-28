# plot 3
print("plot3")

# read dataset
mytable <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
print(dim(mytable))

# subset by filtering date
b<-subset(a,a$Date=="1/2/2007"|a$Date=="2/2/2007")
print(dim(b))

# plotting
png("plot3.png", width=480, height=480)
datetime <- strptime(paste(b$Date, b$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime, b$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering",col="green",ylim=c(0,40))
par(new=TRUE)
plot(datetime, b$Sub_metering_2, type="l", xlab="", ylab="",col="red",ylim=c(0,40))
par(new=TRUE)
plot(datetime, b$Sub_metering_3, type="l", xlab="", ylab="",col="blue",ylim=c(0,40))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("green","red","blue"))
dev.off()