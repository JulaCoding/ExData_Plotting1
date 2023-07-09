d<-read.csv("household_power_consumption.txt", header = TRUE, sep = ';', na.strings = "?")
d$Date <- as.Date(d$Date, format = "%d/%m/%Y")  # Convert "Date" column to Date class
data <- subset(d, Date >= "2007-02-01" & Date <= "2007-02-02")

Datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(Datetime) #Format Datetime column
with(data, {
  plot(Sub_metering_1~Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="") 
  lines(Sub_metering_2~Datetime,col= "red")
  lines(Sub_metering_3~Datetime,col="blue")})
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
