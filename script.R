getData <- function(){
  headers <- read.table(
      "../exdata_data_household_power_consumption/household_power_consumption.txt",
      nrows=1,
      sep=";");
  data <- read.table(
      "../exdata_data_household_power_consumption/household_power_consumption.txt",
      skip = 66637,
      nrows=40320,
      na.strings = "?",
      sep=";");
  names(data) <- c(t(headers))
  data
}