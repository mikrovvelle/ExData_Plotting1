# import the data
source("importData.R")
hpc <- getHpc()

# plot 2, GAP over time
png(filename="Plot2.png", bg="transparent")
plot(hpc$Time, hpc$Global_active_power,
    type="l",
    ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
