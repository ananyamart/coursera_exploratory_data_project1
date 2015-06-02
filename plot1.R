

data <- "household_power_consumption.txt"
r<- read.table(data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
read <- subset(r,grepl("^[1|2].2.2007", r$Date)== TRUE)
globalActivePower <- as.numeric(read$Global_active_power)
hist(globalActivePower, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()



















