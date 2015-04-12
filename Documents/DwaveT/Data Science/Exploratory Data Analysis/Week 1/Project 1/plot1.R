PowerConsumption <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

FebPower <- subset(PowerConsumption, Date == "1/2/2007" | Date =="2/2/2007")

png(width=480, height=480, units="px", file='plot1.png')
hist(FebPower$Global_active_power,
     main = "Global Active Power",
     xlab="Global Active Power (kilowatts)",
     col="red",
     cex.axis=1,
     cex.lab=1,
     cex.main=1
)
dev.off()