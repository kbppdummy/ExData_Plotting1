# script to generate the 3rd plot in the course assignment

plot3Generator <- function(){
    source("./functions.R") #sources the file that contains the getData() function
    
    data <- getData() #reads data
    png(filename = "./plot3.png") #opens a PNG graphic device named plot3.png

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
        col=c("black", "red", "blue")  #assigns color to each line
    )
    
    dev.off()
    cat("Plot 3 generated as plot3.png")
}