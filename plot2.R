source("https://raw.githubusercontent.com/ksuito1/ExData_Plotting1/master/reading_the_data.R")

png(filename = "plot2.png",
    width = 480, height = 480, units = "px",
    bg = "transparent")
plot(electricCons$dateTime, electricCons$Global_active_power, type = "l",
     ylab = "Global Active Power(kilowatts")		
dev.off()
