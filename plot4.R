source("https://raw.githubusercontent.com/ksuito1/ExData_Plotting1/master/reading_the_data.R")

# plot the histogram
png(filename = "plot4.png",
    width = 480, height = 480, units = "px",
    bg = "transparent")

par(mfrow = c(2,2)) # divide layout into four

# up left
plot(electricCons$dateTime, electricCons$Global_active_power, type = "l",
     ylab = "Global Active Power", xlab = "")

# up right
plot(electricCons$dateTime, electricCons$Voltage, type = "l",
     ylab = "Voltage", xlab = "datetime")

# down left
plot(electricCons$dateTime, electricCons$Sub_metering_1, type = "l",
     ylab = "Energy sub metering", xlab = "")
lines(electricCons$dateTime, electricCons$Sub_metering_2, col = "red")
lines(electricCons$dateTime, electricCons$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), lty = 1, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")

# down right
plot(electricCons$dateTime, electricCons$Global_reactive_power, type = "l",
     ylab = "Global_reactive_power", xlab = "datetime")

dev.off()
