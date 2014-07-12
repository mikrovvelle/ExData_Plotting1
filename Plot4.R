# import the data
source("importData.R")
hpc <- getHpc()

# plot 4, 4 sectors
png(filename="Plot4.png", bg="transparent")
par(mfrow=c(2,2))

plot(hpc$Time, hpc$Global_active_power,
        type="l",
        ylab="Global Active Power", xlab="")

plot(hpc$Time, hpc$Voltage,
        type="l",
        ylab="Voltage", xlab="datetime")

plot(hpc$Time, hpc$Sub_metering_1,
        type="l",
        ylab="Energy sub metering", xlab="")
lines(hpc$Time, hpc$Sub_metering_2,
        type="l", xlab="", col="red")
lines(hpc$Time, hpc$Sub_metering_3,
        type="l", xlab="", col="blue")
legend("topright", lty=1, bty="n",
        col=c("black","red","blue"), 
        legend=c("Sub_metering_1", 
                "Sub_metering_2", 
                "Sub_metering_3"))

plot(hpc$Time, hpc$Global_reactive_power,
        type="l",
        xlab="datetime"), ylab="Global_reactive_power"
dev.off()
