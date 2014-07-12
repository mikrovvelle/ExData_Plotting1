importPath="household_power_consumption.txt"

getHpc <- function(path=importPath) {
    hpc <- read.csv(path, sep=";", as.is=TRUE,
        na.strings="?")

    hpc <- hpc[complete.cases(hpc),]

    hpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")
    hpc$Time <- strptime(hpc$Time, "%H:%M:%S")

    hpc <- hpc[year(hpc$Date)==2007 &
        month(hpc$Date)==2 & 
        day(hpc$Date)<3, ]
    year(hpc$Time) <- year(hpc$Date)
    month(hpc$Time) <- month(hpc$Date)
    day(hpc$Time) <- day(hpc$Date)
    hpc
}