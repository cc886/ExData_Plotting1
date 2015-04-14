#####################################################
####   plot1 and plot2 code for reading data     ####
#####################################################

# delete the "#" in front of the code if you DIDN"T run the "plot1.R" AND "plot2.R" code.
#########################################################################################

# p1_data <- read.table(file = "household_power_consumption.txt", header = T, sep = ";",
#                      na.strings = "?")
#
# householdData <- subset(p1_data, Date == "1/2/2007" | Date == "2/2/2007")

# Timeline <- paste(householdData$Date, householdData$Time, sep = " ")

# Timeline_fixed <- strptime(Timeline, "%d/%m/%Y %H:%M:%S")        

# hhData_with_timeline <- cbind(Timeline_fixed, householdData)



########################################################################################



###########################################
##########    new in plot 3     ###########
###########################################



####################### PLOT 3 ####################

png(filename = "plot3.png", width = 480, height = 480)


############## Create a blank drawing area ##################

with(hhData_with_timeline, plot(x = Timeline_fixed, 
                                y = Sub_metering_1, 
                                ylab = "Energy sub metering",
                                xlab = "",
                                type = "n"))


######## draw the 3 lines seperately ##################

with(hhData_with_timeline, lines(x = Timeline_fixed, 
                                y = Sub_metering_1, 
                                type = "l", 
                                col = "black"))

with(hhData_with_timeline, lines(x = Timeline_fixed, 
                                 y = Sub_metering_2, 
                                 type = "l", 
                                 col = "red"))

with(hhData_with_timeline, lines(x = Timeline_fixed, 
                                 y = Sub_metering_3, 
                                 type = "l", 
                                 col = "blue"))

############## Create the legend ##################

legend("topright", lty = c(1, 1, 1), 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))




dev.off()