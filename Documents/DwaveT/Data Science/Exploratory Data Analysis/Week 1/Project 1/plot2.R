PowerConsumption <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

FebPower <- subset(PowerConsumption, Date == "1/2/2007" | Date =="2/2/2007")

library(lubridate)
FebPower$DateTime <- dmy_hms(paste(FebPower$Date, FebPower$Time))

png(width=480, height=480, units="px", file='plot2.png')
with(FebPower, 
     plot(DateTime,Global_active_power, 
          ylab="Global Active Power (kilowatts)",
          xlab="",
          cex.axis=1,
          cex.lab=1,
          type="l")
     )
dev.off()