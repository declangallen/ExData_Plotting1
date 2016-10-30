

##This script is run first. This will load the data from the archive onto your machine. 
##Each plot can then be run independantly without the need to load the data each time.
##Download data from UC Irvine archive. A directory named 'data' is created to house data


##Download data from UC Irvine archive. A directory named 'data' is created to house data

if(!file.exists('data')) dir.create('data')

##Location of data in archive
fileURL <- "https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip" 

##download the zipped file
download.file(fileURL,destfile = "./data/household_power_consumption.zip")

##unzip the folder
unzip("./data/household_power_consumption.zip", exdir = "./data")

datafile <- file("./data/household_power_consumption.txt")

##read an arbitary amount of data from the start of the table to get the headers
datacolname <- read.table(datafile, stringsAsFactors = F, 
                          header = T, sep = ";", nrows = 5)

##now read the relevant rows to create a filtered dataset
datafile1 <- file("./data/household_power_consumption.txt")

data <- read.table(text = grep("^[1,2]/2/2007", readLines(datafile1), value = T), 
                   stringsAsFactors = F, header=F, sep = ";")

##label the column in the filtered dataset
colnames(data) = colnames(datacolname)

##change the Date column to the correct format
data$Date = strptime(data$Date, format = '%d/%m/%Y')

##Create a new variable that combines the Date and Time to enable more detailed plotting
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
















