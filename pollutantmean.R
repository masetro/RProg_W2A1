pollutantmean <- function(directory="./", pollutant, id=1:332) {
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: Do not round the result!
  
  ##Loop through the provided monitor ids
  ##Read the particulate data from the monitor into a vector and remove NA values
  ##use the following: read.csv
  
  print(directory)
  print(pollutant)

  paste(directory,id,".csv")
  #m_file <- file(paste(directory,id,".csv"))
  #str(m_file)
  
  #m_data <- read.csv()
  
  
}