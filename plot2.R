pow3 <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)
pow2 <- pow3[(as.Date(pow$Date, format = "%d/%m/%Y") == as.Date("2007-02-01"))|
               (as.Date(pow$Date, format = "%d/%m/%Y") == as.Date("2007-02-02")),]
times <- strptime(paste(pow2[,1], pow2[,2]), format = "%d/%m/%Y %H:%M:%S")
png(filename="plot2.png")
plot(times, as.numeric(pow2$Global_active_power), type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()