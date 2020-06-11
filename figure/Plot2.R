plot(subsetdata$Combo, subsetdata$Global_active_power, 
     pch=".", type="o", 
     xlab="", 
     ylab= "Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png")
dev.off()