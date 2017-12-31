pow3 <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)
pow2 <- pow3[(as.Date(pow$Date, format = "%d/%m/%Y") == as.Date("2007-02-01"))|
             (as.Date(pow$Date, format = "%d/%m/%Y") == as.Date("2007-02-02")),]
png(filename="plot1.png")
hist(as.numeric(pow2$Global_active_power), breaks = 12, freq = TRUE, col = "red", 
     xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
