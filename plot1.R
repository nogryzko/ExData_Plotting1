plot1 <- function(x) {

        hpc <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)

        hpcs <- subset(hpc, hpc$Date == "1/2/2007" | hpc$Date == "2/2/2007")

        png(filename = "plot1.png", width = 480, height = 480, units = "px")

        with(hpcs, hist(as.numeric(Global_active_power), main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red"))

        dev.off()

}