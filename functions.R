getData <- function(){
  headers <- read.table(
      "./exdata_data_household_power_consumption/household_power_consumption.txt",
      nrows=1,
      sep=";");
  data <- read.table(
      "./exdata_data_household_power_consumption/household_power_consumption.txt",
      skip = 66637,
      nrows=2880,
      na.strings = "?",
      sep=";");
  names(data) <- c(t(headers))
  data[,1] <- as.Date(data[,1],"%d/%m/%Y") #converts date from factor to Date class
  data[,2] <- as.POSIXct(strptime(paste(data[,1],data[,2]), "%Y-%m-%d %T")) #converts the Time data to POSIXct together with the Date
  data
}