setwd("C:\\Users\\ANANYA\\Downloads\\coursera\\exploratory data analysis\\project")
data <- "./1/household_power_consumption.txt"
r<- read.table(data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
read <- subset(r,grepl("^[1|2].2.2007", r$Date)== TRUE)
datetime <- strptime(paste(read$Date, read$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(read$Global_active_power)
plot(datetime, globalActivePower, ylab="Global Active Power (kilowatts)", type="l")
dev.copy(png,file="plot2.png", height=480, width=480)
dev.off()