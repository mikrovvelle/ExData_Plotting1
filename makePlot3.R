# import the data
source("importData.R")
hpc <- getHpc()

# plot 3, sub meters
png(filename="Plot3.png")
plot(hpc$Time, hpc$Sub_metering_1,
    type="l",
    ylab="Energy sub metering", xlab="")
lines(hpc$Time, hpc$Sub_metering_2,
    type="l", xlab="", col="red")
lines(hpc$Time, hpc$Sub_metering_3,
    type="l", xlab="", col="blue")
legend("topright", lty=1, 
    col=c("black","red","blue"), 
    legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
