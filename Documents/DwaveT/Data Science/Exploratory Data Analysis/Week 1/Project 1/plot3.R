PowerConsumption <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

FebPower <- subset(PowerConsumption, Date == "1/2/2007" | Date =="2/2/2007")

library(lubridate)
FebPower$DateTime <- dmy_hms(paste(FebPower$Date, FebPower$Time))

png(width=480, height=480, units="px", file='plot3.png')
with(FebPower, 
     plot(DateTime,Sub_metering_1, 
          ylab="Energy sub metering",
          xlab="",
          cex.axis=1,
          cex.lab=1,
          cex.main=1,
          type="l"))

with(FebPower, points(DateTime,Sub_metering_2,
                      col="red",
                      type="l"))

with(FebPower, points(DateTime,Sub_metering_3,
                      col="blue",
                      type="l"))

legend("topright", cex=1, lwd=1, col=c("black","blue","red"), legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()