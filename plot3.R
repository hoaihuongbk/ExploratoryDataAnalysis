# Import library
library(ggplot2)
library(dplyr)

# Load data
source("./getData.R")

# Initial PNG file
png(filename = "plot3.png")
par(mar=c(5, 5, 5, 5))

# Summary
NEI_3 <- subset(NEI, fips == "24510")
NEI_3 <- NEI_3 %>% group_by(year, type) %>% summarise(total_emissions=sum(Emissions))

# Create plot
g <- ggplot(data=NEI_3, aes(x=year, y=total_emissions, group=type)) 
g <- g + geom_line(aes(color=type)) + geom_point(aes(color=type))
g <- g + labs(title = "Total emissions from PM2.5 Baltimore City, Maryland by Type", x="Year", y="Total emissions (tons)")
g <- g + scale_color_brewer(palette="Dark2") + theme_minimal()
g <- g + theme(plot.title = element_text(hjust = 0.5))
g <- g + theme(legend.position="top", legend.title = element_blank())
g

# Close file
dev.off()