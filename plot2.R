plot2 <- function(x) {
        
        hpc <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)
        
        hpcs <- subset(hpc, hpc$Date == "1/2/2007" | hpc$Date == "2/2/2007")
        
        png(filename = "plot2.png", width = 480, height = 480, units = "px")
        
        plot(1:2880, hpcs$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xaxt = "n", xlab = "")
        
        axis(1, at = c(1, 1440, 2880), labels= c("Thu", "Fri", "Sat"))
        
        dev.off()
        
}