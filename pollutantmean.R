pollutantmean <- function(directory="specdata", pollutant, id=1:332) {
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbersa
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: Do not round the result!
  
  ##Loop through the provided monitor ids
  ##Read the particulate data from the monitor into a vector and remove NA values
  ##use the following: read.csv
  
  m_files <- paste("./",directory,"/",sprintf("%03d",id),".csv",sep="")
  m_sum <- 0
  
  for(f in m_files) {
    m_data <- read.csv(f, header = TRUE)
    #pollutantmean <- cbind(mean(m_data[pollutant][!is.na(m_data[pollutant])]))

    m_sum <- m_sum + mean(m_data[pollutant][!is.na(m_data[pollutant])])
    
  }
  pollutantmean <- m_sum
}
