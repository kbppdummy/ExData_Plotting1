# script to generate the 1st plot in the course assignment

plot1Generator <- function(){
    source("./functions.R") #sources the file that contains the getData() function
    
    data <- getData() #reads data
    png(filename = "./plot1.png") #opens a PNG graphic device named plot1.png
    hist(
        data$Global_active_power,                 #all the global active power from the read data
        main="Global Active Power",               #sets the main title of the plot
        xlab="Global Active Power (kilowatts)",   #sets the x-axis label of the plot
        col="red"                                 #sets the color of the buckets to red
    )
    dev.off()  #closes the graphic device
    cat("Plot 1 generated as plot1.png")  #informs user that the file has been created
}
