pollutantmean <- function(directory="specdata", pollutant, id=1:332) {
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbersa
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: Do not round the result!

# build the file list from the id string  
  m_files <- paste("./",directory,"/",sprintf("%03d",id),".csv",sep="")

# initialize the mean values vector
  m_values <- vector()
  
# loop through the monitor files; read the csv and caculate the mean
  for(f in m_files) {
    m_data <- read.csv(f, header = TRUE)
    m_values <- c(m_values,mean(m_data[,pollutant],na.rm=TRUE))
  }
# return the mean data
  pollutantmean <- mean(m_values)
}
