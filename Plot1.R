# import the data
source("importData.R")
hpc <- getHpc()

# plot 1 histogram
png(filename="Plot1.png", bg="transparent")
hist(hpc$Global_active_power,
    col="red",
    xlab="Global Active Power (kilowatts)",
    main="Global Active Power")
dev.off()
