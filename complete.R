complete <- function(directory="specdata", id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
  # build the file list from the id string  
  c_files <- paste("./",directory,"/",sprintf("%03d",id),".csv",sep="")
  c_cases = data.frame()

  for(f in c_files) {
    print(f)
    nobs_data <- read.csv(f, header = TRUE)
    #TODO
    c_cases <- cbind(id,nobs = sum(complete.cases(nobs_data$sulfate)))
  }
  c_cases
}