if (!existsFunction("getDataNeeded")) {
  source("get_data.R")
}
if (!exists("hpc_df")) {
  hpc_df <- getDataNeeded("../data/household_power_consumption.txt")
}
with(
  hpc_df, plot(
    datetime,
    Global_active_power,
    type = "l",
    xlab = "",
    ylab = "Global Active Power (kilowatts)"
  )
)
