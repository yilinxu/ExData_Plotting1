data<-read.csv("household_power_consumption.txt",sep=";",na.strings=c("?",""))
subdata<-data[grepl("^[1,2]/2/2007",as.character(data$Date)),]
datatime<-paste(subdata$Date,subdata$Time,sep=",")
datatime<-strptime(datatime,format="%d/%m/%Y,%H:%M:%S")
plot(datatime,subdata$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.copy(png,filename="plot2.png",width=480,height=480)
dev.off()