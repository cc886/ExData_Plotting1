
####################### READ DATA ####################

p1_data <- read.table(file = "household_power_consumption.txt", header = T, sep = ";",
           na.strings = "?")



####################### SUBSET ####################

householdData <- subset(p1_data, Date == "1/2/2007" | Date == "2/2/2007")



####################### PLOT 1 ####################

png(filename = "plot1.png", width = 480, height = 480)


plot1 <- hist(householdData$Global_active_power, 
              col = "red", 
              main = "Global Active Power", 
              xlab = "Global Active Power (kilowatts)") 

dev.off()
