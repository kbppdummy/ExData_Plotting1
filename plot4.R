# script to generate the 4th plot in the course assignment

plot4Generator <- function(){
    source("./functions.R") #sources the file that contains the getData() function
    
    data <- getData() #reads data
    png(filename = "./plot4.png") #opens a PNG graphic device named plot4.png
    
    par(mfrow=c(2,2)) #changes the figure layout to have 2 rows and 2 columns, each cell can hold one plot
    
    #FOR THE FIRST PLOT
    with(
        data,
        plot(
            Time,  #plotting the time together with the
            Global_active_power,  #global active power values
            type="l",             #l for line graphs
            ylab="Global Active Power", #just like in plot 1
            xlab=""
        )
    )
    
    #FOR THE SECOND PLOT
    with(
        data,
        plot(
            Time,  #time is plotted together with voltage
            Voltage,
            type="l",  #again, a line graph
            ylab="Voltage",
            xlab="datetime"
        )
    )
    
    #FOR THE THIRD PLOT
    #submetering1
    with( #plotting the 1st line graph: sub_metering_1
        data,
        plot(        #this creates the plot
            Time,    #plotting time against the sub_metering_1 column
            Sub_metering_1,
            type="l",
            ylab="Energy sub metering",
            xlab=""
        )
    )
    #submetering2
    with(
        data,
        lines(      #this will only add another line graph to the previously created plot
            Time,   #with x=time and y=sub_metering_2
            Sub_metering_2,
            type="l",
            col="red"  #color of this line is red
        )
    )
    #submetering3
    with(
        data,
        lines(      #this will only add another line graph to the previously created plot
            Time,   #with x=time and y=sub_metering_3
            Sub_metering_3,
            type="l",
            col="blue"  #color of this line is blue
        )
    )
    #adds a legend section to the 3rd plot
    legend(
        "topright",  #places it in the topright
        legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),  #names of each line
        lty=c(1,1),  #creates the linetype
        col=c("black", "red", "blue"),  #assigns color to each line
        bty = "n"    #removes the border of the legend
    )
    
    #FOR THE FOURTH PLOT
    with(
        data,
        plot(   #creates a plot against time and global_reactive_power
            Time,
            Global_reactive_power,
            type="l",
            xlab="datetime"
        )
    )
    
    #closes the graphics device
    dev.off()
    cat("Plot 4 generated as plot4.png")
}