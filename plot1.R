#plot1
library(data.table)
library(datasets)
data<-data.frame(read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE))
data$Date<-strptime(data$Date, "%d/%m/%Y")
data_clean <-subset(data,data$Date>="2007-02-01"& data$Date<="2007-02-02")
hist(data_clean$Global_active_power,col="red",
     main= paste("Global Active Power"),
     xlab= "Global Active Power (kilowatts)",
     yaxt='n')
axis(side=2, at=c(0,200,400,600,800,1000,1200))
dev.copy(png, file = "plot1.png")
dev.off()
