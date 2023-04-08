#Group Project 2A
setwd("/Users/macbook/Desktop/Group Project")

# read in a sample excel sheet

crimeNew = as.data.frame(read.csv("Crime_Data_from_2020_to_Present.csv"))

crimeOld = as.data.frame(read.csv("Crime_Data_from_2010_to_2019.csv"))

CN <-crimeNew[order(crimeNew$DATE.OCC),]
CO <-crimeOld[order(crimeOld$DATE.OCC),]

Crime=rbind(crimeOld,crimeNew)
attach(Crime)

df<-as.data.frame(DATE.OCC)

dm <- as.data.frame(format(as.Date(df$DATE.OCC, format="%m/%d/%Y"),"%m"))
dw <- as.data.frame(weekdays(as.Date(df$DATE.OCC, format="%m/%d/%Y")))
Crime_total<-cbind(dw,dm,Crime)
attach(Crime_total)
names(Crime_total)[1]="Weekday"
names(Crime_total)[2]="Month"

Crime_total$TIME.OCC=floor(TIME.OCC/100)


detach(Crime_total)
attach(Crime_total)

#Month
MT<-as.data.frame(table(Month))
barplot(MT$Freq, names.arg = MT$Month)

#Time
TT<-as.data.frame(table(TIME.OCC))
barplot(TT$Freq, names.arg = TT$TIME.OCC)

#Area
AT<-as.data.frame(table(AREA))
barplot(AT$Freq, names.arg = AT$AREA)

#Type Crime

CT<-as.data.frame(table(Crm.Cd))
CTOrder <-CT[order(CT$Freq , decreasing = TRUE),]
barplot(CTOrder$Freq[1:15], names.arg = CTOrder$Crm.Cd[1:15])

write.table(Crime_total, file="Crime_total.txt", sep="\t", row.names=F)
