source("https://raw.githubusercontent.com/ksuito1/ExData_Plotting1/master/reading_the_data.R")

png(filename = "plot3.png",
    width = 480, height = 480, units = "px",
    bg = "transparent")
plot(electricCons$dateTime, electricCons$Sub_metering_1, type = "l",
     ylab = "Energy sub metering", xlab = "")
lines(electricCons$dateTime, electricCons$Sub_metering_2, col = "red")
lines(electricCons$dateTime, electricCons$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), lty = 1, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
