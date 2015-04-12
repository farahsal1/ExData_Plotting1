power<-read.table("household_power_consumption.txt", sep=",", header=TRUE)

par(mfrow=c(1,1), mar=c(3,3,3,3), oma=c(1,1,1,1))
powers<-power[power$Date>="2007-02-01" & power$Date<="2007-02-02",]
library(lubridate) 
powers$datetime<-paste(powers$Date, powers$Time)
powers$datetime1<-ymd_hms(powers$datetime)

powers$gap<-as.numeric(paste(powers$Global_active_power)

hist(powers$gap, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency") 

dev.copy(png,file="Plot1.png", width=480, height=480)
dev.off() 
