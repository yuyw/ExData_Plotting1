# plot 1
print("plot1")

# read dataset
mytable <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
print(dim(mytable))

# subset by filtering date
b<-subset(mytable,a$Date=="1/2/2007"|a$Date=="2/2/2007")
print(dim(b))

# plotting
c<-b$Global_active_power
d<-as.numeric(as.character(c))
png("plot1.png",width=480,height=480)
hist(d,main="Global Active Power",xlab="Global Active Power (kilowatt)", ylab="Frequency",col="red")
dev.off()
