#plot2
library(data.table)
library(datasets)
data<-data.frame(read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE))
data$DT2<-as.POSIXct(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S)
data_clean <-subset(data,data$DT2>="2007-02-01"& data$DT2<="2007-02-02 23:59:00")
plot(data_clean$DT2,data_clean$Global_active_power,type="l", ylab="Global Active Power (killowatts),xlab="")
dev.copy(png, file = "plot2.png")
dev.off()
