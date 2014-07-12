# import the data
source("importData.R")
hpc <- getHpc()

# plot 1 histogram
png(filename="Plot1.png")
hist(hpc$Global_active_power,
    col="red",
    xlab="Global Active Power (kilowatts)",
    main="Global Active Power")
dev.off()
