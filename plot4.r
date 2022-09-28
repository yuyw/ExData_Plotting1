# plot 4
print("plot4")

# read dataset
mytable <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
print(dim(mytable))

# subset by filtering date
b<-subset(a,a$Date=="1/2/2007"|a$Date=="2/2/2007")
print(dim(b))

# plotting
c<-b$Global_active_power
d<-as.numeric(as.character(c))
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(datetime, d, type="l", xlab="", ylab="Global Active Power (kilowatts)")
p<-as.numeric(as.character(b$Voltage))
plot(datetime, p, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, b$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering",col="green",ylim=c(0,40))
par(new=TRUE)
plot(datetime, b$Sub_metering_2, type="l", xlab="", ylab="",col="red",ylim=c(0,40))
par(new=TRUE)
plot(datetime, b$Sub_metering_3, type="l", xlab="", ylab="",col="blue",ylim=c(0,40))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("green","red","blue"),cex=0.5)

q<-as.numeric(as.character(b$Global_reactive_power))
plot(datetime, q, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()