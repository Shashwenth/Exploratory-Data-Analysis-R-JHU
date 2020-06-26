df<-read.table("household_power_consumption.txt",header=TRUE,sep=';')
df1<-df$Date=='1/2/2007'|df$Date=='2/2/2007'
df1<-df[df1,]
df1$Global_active_power<-as.numeric(df1$Global_active_power)
hist(df1$Global_active_power,col='red',main = "GLobal Active Power",xlab = "GLobal Active Power (kilowatts)")
dev.copy(png,file="plott1.png",width=480,height=480)
dev.off()

