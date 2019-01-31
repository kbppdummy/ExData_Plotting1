# script to generate the 2nd plot in the course assignment

plot2Generator <- function(){
    source("./functions.R") #sources the file that contains the getData() function
    
    data <- getData() #reads data
    png(filename = "./plot2.png") #opens a PNG graphic device named plot2.png
    
    #creates the plot together with data
    with(
        data,                     #the data read
        plot(                     #creates the plot
            Time,                 #x data is time
            Global_active_power,  #y data is the global_active_power
            type="l",             #l is for line graphs
            ylab="Global Active Power (kilowatts)", #y-axis label
            xlab=""               #removes x-axis label
        )
    )
    dev.off()  #closes the graphics device
    cat("Plot 2 generated as plot2.png")  #user prompt that process is done
}