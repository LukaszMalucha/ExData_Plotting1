## Reading File:

Consumption <- read.table("household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)


## Removing obsolete Data:

Consumption <- Consumption %>% select(V3) %>% mutate(V3 = as.numeric(as.character(V3)))


## Plot 1:

hist(Consumption$V3, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (killowatts)", ylab = "Frequency")
