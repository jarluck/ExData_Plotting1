pow3 <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)
pow2 <- pow3[(as.Date(pow$Date, format = "%d/%m/%Y") == as.Date("2007-02-01"))|
               (as.Date(pow$Date, format = "%d/%m/%Y") == as.Date("2007-02-02")),]
times <- strptime(paste(pow2[,1], pow2[,2]), format = "%d/%m/%Y %H:%M:%S")
png(filename="plot3.png")
plot(times, as.numeric(pow2$Sub_metering_1), type = "l", xlab = "", ylab = "Energy sub metering")
lines(times, as.numeric(pow2$Sub_metering_2), type = "l", col = "red")
lines(times, as.numeric(pow2$Sub_metering_3), type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black", "red", "blue"), lty = (1))
dev.off()
