## Reading File:


HouseData <- read.table("household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)


## Removing obsolete Data:

HouseData <- HouseData %>% mutate(V1 = as.POSIXct(dmy_hms(as.character(paste(V1, V2)))),
                        V3 = as.numeric(as.character(V3))) %>% select(V1,V3)


## Plot 2:

with(HouseData, plot(V1,V3, type="l", xlab = "", ylab = "Global Active Power (kilowatts)"))

