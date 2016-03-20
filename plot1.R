## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Find the sum of total emission for each of years.
Aggregate_total <- aggregate(Emissions ~ year, data = NEI, FUN = sum)

## Make a plot by using base plotting system
png('plot1.png')
barplot(Aggregate_total$Emissions,names.arg = Aggregate_total$year, xlab = "Year", ylab = "Totol PM2.5 Emissions", main = "Total Emission in US", col = "grey")
dev.off()