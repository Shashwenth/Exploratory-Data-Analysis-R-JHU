df<-read.table("household_power_consumption.txt",header=TRUE,sep=';')
df1<-df$Date=='1/2/2007'|df$Date=='2/2/2007'
df1<-df[df1,]
df1$Global_active_power<-as.numeric(df1$Global_active_power)
df1$Date<-paste(df1$Date,df1$Time,sep = " ")
df1$Sub_metering_1<-as.numeric(df1$Sub_metering_1)
df1$Sub_metering_2<-as.numeric(df1$Sub_metering_2)
df1$Sub_metering_3<-as.numeric(df1$Sub_metering_3)
plot(strptime(df1$Date, "%d/%m/%Y %H:%M:%S"),df1$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(strptime(df1$Date, "%d/%m/%Y %H:%M:%S"),df1$Sub_metering_2,type="l",col="red")
lines(strptime(df1$Date, "%d/%m/%Y %H:%M:%S"),df1$Sub_metering_3,type="l",col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.copy(png,file="plot3.png",width=480,height=480)
dev.off()