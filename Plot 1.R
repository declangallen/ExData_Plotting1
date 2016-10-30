##Plot 1
png(filename = './data/plot1.png', width = 480, height = 480)
with(data, hist(Global_active_power, col = 'red', xlab = 'Global Active Power (kilowatts)', 
                ylab = 'Frequency', main = 'Global Active Power'))
dev.off()