d<-read.csv("household_power_consumption.txt", header = TRUE, sep = ';', na.strings = '?', colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
d$Date <- as.Date(d$Date, format = "%Y-%m-%d")  # Convert "Date" column to Date class
d$Time<- strptime(d$Time, format = "%H:%M:%S")
data <- subset(d, Date >= "2007-02-01" & Date <= "2007-02-02")
# the dataset is subsetted using the %in% operator to include only the rows with dates "2007-02-01" and "2007-02-02".

hist(subset_data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
