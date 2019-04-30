# Load data
source("./getData.R")

# Initial PNG file
png(filename = "plot1.png")
par(mar=c(5, 5, 5, 5))

# Summary
NEI_1 <- with(NEI, tapply(Emissions, year, FUN = sum))

# Create plot
barplot(NEI_1, xlab = "Year", ylab = "Total Emissions (tons)", main="Total emissions from PM2.5 in the United States")

# Close file
dev.off()