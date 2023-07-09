d<-read.csv("household_power_consumption.txt", header = TRUE, sep = ';', na.strings = "?")
d$Date <- as.Date(d$Date, format = "%d/%m/%Y")  # Convert "Date" column to Date class
data <- subset(d, Date >= "2007-02-01" & Date <= "2007-02-02")

Datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(Datetime) #Format Datetime column

plot(data$Global_active_power~data$Datetime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
