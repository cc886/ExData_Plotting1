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
##########    new in plot 4     ###########
###########################################



####################### PLOT 4 ####################

png(filename = "plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))

with(hhData_with_timeline, {
        
#################   plot4_1 ===== plot2   ################
        
        plot(x = Timeline_fixed, 
             y = Global_active_power, 
             ylab = "Global Active Power (kilowatts)",
             xlab = "",
             type = "l",
             col = "black")
        
        
#################    plot4_2       ########################
        
        plot(x = Timeline_fixed, 
             y = Voltage, 
             ylab = "Voltage",
             xlab = "datetime",
             type = "l", 
             col = "black")
        
      
#################     plot4_3 ===== plot3 without border!!!    #################




with(hhData_with_timeline, plot(x = hhData_with_timeline$Timeline_fixed, 
                                y = hhData_with_timeline$Sub_metering_1, 
                                ylab = "Energy sub metering",
                                xlab = "",
                                type = "n"))

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

legend("topright", lty = c(1, 1, 1), bty = "n",  
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

        
   
#################       plot4_4         ################
        
        plot(x = Timeline_fixed, 
             y = Global_reactive_power, 
             ylab = "Global_reactive_power",
             xlab = "datetime",
             type = "l", 
             col = "black")
        
        
})


###reset the mfrow value to default
par(mfrow = c(1, 1))



dev.off()