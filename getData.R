# Global settings
Sys.setlocale(category = 'LC_ALL','en_US.UTF-8')

hasLoadData <- function (df_name){
        if (exists(df_name)) is.data.frame(get(df_name)) else FALSE
}

# Load data from RDS file
if(!hasLoadData("NEI")) {
        NEI <- readRDS("summarySCC_PM25.rds")
        NEI$type <- as.factor(NEI$type)
}
if(!hasLoadData("NEI")) {
        SCC <- readRDS("Source_Classification_Code.rds")
}