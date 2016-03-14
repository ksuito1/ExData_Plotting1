# download file
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if(!file.exists("electricCons.zip")) {
        download.file(url, destfile = "electricCons.zip")
}

# unzip the file
if(!file.exists("household_power_consumption.txt")) {
        unzip("electricCons.zip")
}

# load data
electricCons <- read.csv("household_power_consumption.txt", stringsAsFactors = FALSE, na.strings = "?",  sep = ";")

# filter data
electricCons <- electricCons[electricCons$Date == "1/2/2007" | electricCons$Date == "2/2/2007", ]

# adding a new column called timestamp
library(dplyr)
electricCons <- mutate(electricCons, dateTime = paste(electricCons$Date, electricCons$Time, sep = " "))

# convert character to time
library(lubridate)
electricCons$dateTime <- dmy_hms(electricCons$dateTime)
