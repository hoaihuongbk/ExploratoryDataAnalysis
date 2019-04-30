# Load data
source("./getData.R")

# Initial PNG file
png(filename = "plot2.png")
par(mar=c(5, 5, 5, 5))

# Summary
NEI_2 <- subset(NEI, fips == "24510")
NEI_2 <- with(NEI_2, tapply(Emissions, year, FUN = sum))

# Create plot
barplot(NEI_2, xlab = "Year", ylab = "Total Emissions (tons)", main="Total emissions from PM2.5 Baltimore City, Maryland")

# Close file
dev.off()