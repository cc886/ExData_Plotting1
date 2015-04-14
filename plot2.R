

###########################################
####   plot1 code for reading data     ####
###########################################

# delete the "#" in front of the code if you DIDN"T run the "plot1.R" AND "plot2.R" code.
#########################################################################################



# p1_data <- read.table(file = "household_power_consumption.txt", header = T, sep = ";",
#                      na.strings = "?")
#
# householdData <- subset(p1_data, Date == "1/2/2007" | Date == "2/2/2007")

#########################################################################################



###########################################
##########    new in plot 2     ###########
###########################################



############## TIMELINE FOR X AIXS ###############


Timeline <- paste(householdData$Date, householdData$Time, sep = " ")


# fix the timeline
Timeline_fixed <- strptime(Timeline, "%d/%m/%Y %H:%M:%S")        
 

hhData_with_timeline <- cbind(Timeline_fixed, householdData)





####################### PLOT 2 ####################

png(filename = "plot2.png", width = 480, height = 480)

plo2 <- plot(x = hhData_with_timeline$Timeline_fixed, 
             y = hhData_with_timeline$Global_active_power, 
             ylab = "Global Active Power (kilowatts)",
             xlab = "",
             type = "l",
             col = "black")


dev.off()
