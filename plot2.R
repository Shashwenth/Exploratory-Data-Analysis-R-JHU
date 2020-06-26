df<-read.table("household_power_consumption.txt",header=TRUE,sep=';')
df1<-df$Date=='1/2/2007'|df$Date=='2/2/2007'
df1<-df[df1,]
df1$Global_active_power<-as.numeric(df1$Global_active_power)
df1$Date<-paste(df1$Date,df1$Time,sep = " ")
png("plot2.png", width=480, height=480)
plot(strptime(df1$Date, "%d/%m/%Y %H:%M:%S"),df1$Global_active_power , type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
