par(mfrow= c(2,2))
plot(subsetdata$Combo, subsetdata$Global_active_power, 
     pch=".", type="o", 
     xlab="", 
     ylab= "Global Active Power (kilowatts)")
plot(subsetdata$Combo, subsetdata$Voltage, xlab="datetime", ylab="Voltage", pch=".",type= "o")
plot(subsetdata$Combo, subsetdata$Sub_metering_1, type= "n", xlab= "", ylab= "Energy sub metering")
points(subsetdata$Combo, subsetdata$Sub_metering_1, pch=".", type="o")
points(subsetdata$Combo, subsetdata$Sub_metering_2, col= "red", pch=".", type="o")
points(subsetdata$Combo, subsetdata$Sub_metering_3, col= "blue", pch=".", type="o")
legend("topright", legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col= c("black", "red", "blue"), lty= c(1,1,1), bty="n", cex=0.5)
plot(subsetdata$Combo, subsetdata$Global_reactive_power, xlab= "datetime", ylab = "Global_reactive_power", pch=".", type= "o")
dev.copy(png,file= "Plot4.png")
dev.off()
