plot(subsetdata$Combo, subsetdata$Sub_metering_1, type= "n", xlab= "", ylab= "Energy sub metering")
points(subsetdata$Combo, subsetdata$Sub_metering_1, pch=".", type="o")
points(subsetdata$Combo, subsetdata$Sub_metering_2, col= "red", pch=".", type="o")
points(subsetdata$Combo, subsetdata$Sub_metering_3, col= "blue", pch=".", type="o")
legend("topright", legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col= c("black", "red", "blue"), lty= c(1,1,1))
dev.copy(png,file= "Plot3.png")
dev.off()
 