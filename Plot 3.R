##Plot 3

png(filename = './data/plot3.png', width = 480, height = 480)

with(data, plot(DateTime, Sub_metering_1, col = 'black', type = 'l', 
                ylab = 'Energy sub metering', xlab = ' '))
with(data, points(DateTime, Sub_metering_2, col = 'red', type = 'l'))
with(data, points(DateTime, Sub_metering_3, col = 'blue', type = 'l'))
legend("topright", lty=1, col = c("black", "red", "blue"), 
       legend = c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"))
dev.off()