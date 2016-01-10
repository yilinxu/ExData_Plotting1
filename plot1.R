data<-read.csv("household_power_consumption.txt",sep=";",na.strings=c("?",""))
subdata<-data[grepl("^[1,2]/2/2007",as.character(data$Date)),]
hist(subdata$Global_active_power,col="red",xlab="Global Active Power (killowatts)",main="Global Active Power")
dev.copy(png,filename="plot1.png",height=480,width=480)
dev.off()