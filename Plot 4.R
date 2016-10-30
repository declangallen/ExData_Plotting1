##Plot 4
png(filename = './data/plot4.png', width = 480, height = 480)

par(mfrow = c(2,2))

##Plot 4.1
with(data, plot(DateTime, Global_active_power, ylab = 'Global Active Power', 
                xlab = ' ', type = 'l'))
##Plot 4.2
plot(data$DateTime, data$Voltage, 
     type = 'l', xlab = "datetime", ylab = 'Voltage')

##Plot 4.3
with(data, plot(DateTime, Sub_metering_1, col = 'black', type = 'l', 
                ylab = 'Energy sub metering', xlab = ' '))
with(data, points(DateTime, Sub_metering_2, col = 'red', type = 'l'))
with(data, points(DateTime, Sub_metering_3, col = 'blue', type = 'l'))
legend("topright", col = c("black", "red", "blue"), lty = 1, bty = 'n',
       legend = c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"))

##Plot 4.4
plot(data$DateTime, data$Global_reactive_power, type = 'l', 
     xlab = "datetime", ylab = 'Global_Reactive_Power')

dev.off()