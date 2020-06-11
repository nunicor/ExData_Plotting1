data<-read.table("household_power_consumption.txt", 
                header = TRUE, 
                sep = ";", 
                colClasses = c("character","character", rep("numeric",7)), 
                na.strings = c("?"))
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
subsetdata<-subset(data,data$Date=="2007-02-01" | data$Date == "2007-02-02")
subsetdata$Combo <- strptime(paste(subsetdata$Date, subsetdata$Time), "%F %T")
hist(subsetdata$Global_active_power, col= "red", xlab= "Global Active Power (kilowatts)", main= "Global Active Power")
dev.copy(png, file="plot1.png")
dev.off()

##ignore
data$Combo <- as.POSIXct(paste(data$Date, data$Time))
