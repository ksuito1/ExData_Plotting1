source("https://raw.githubusercontent.com/ksuito1/ExData_Plotting1/master/reading_the_data.R")

# plot the histogram
png(filename = "plot1.png",
    width = 480, height = 480, units = "px",
    bg = "transparent")
hist(electricCons$Global_active_power,
     col = "red",		
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")		
dev.off()
