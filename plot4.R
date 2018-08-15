plot4 <- function(x) {
        
        hpc <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)
        
        hpcs <- subset(hpc, hpc$Date == "1/2/2007" | hpc$Date == "2/2/2007")
        
        png(filename = "plot4.png", width = 480, height = 480, units = "px")
        
                par(mfrow=c(2,2))
                
                ## Plot2 (top left)
                
                        plot(1:2880, hpcs$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xaxt = "n", xlab = "")
                
                        axis(1, at = c(1, 1440, 2880), labels= c("Thu", "Fri", "Sat"))
                        
                ## plot top right
                        
                        plot(1:2880, hpcs$Voltage, ylab = "Voltage", type = "l", xaxt = "n", xlab = "datetime")
                        
                        axis(1, at = c(1, 1440, 2880), labels= c("Thu", "Fri", "Sat"))
                        
                ## plot3 (bottom left)
                        plot(1:2880, hpcs$Sub_metering_1, type = "l", ylab = "Energy sub metering", xaxt = "n", xlab = "")
                        
                        points(1:2880, hpcs$Sub_metering_2, type = "l", col = "red")
                        
                        points(1:2880, hpcs$Sub_metering_3, type = "l", col = "blue")
                        
                        axis(1, at = c(1, 1440, 2880), labels= c("Thu", "Fri", "Sat"))
                        
                        legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, bty = "n")                
                
                ## plot bottom right
                        
                        plot(1:2880, hpcs$Global_reactive_power, ylab = "Global_reactive_power", type = "l", xaxt = "n", xlab = "datetime")
        
                        axis(1, at = c(1, 1440, 2880), labels= c("Thu", "Fri", "Sat"))
                        
        
        dev.off()
        
}