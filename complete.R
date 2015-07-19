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
  # intialize the data frame
  c_cases = data.frame()

  # loop through the files
  for(i in 1:length(c_files)){
    nobs_data <- read.csv(c_files[i], header = TRUE)
    # build the frame
    if(length(c_cases)==0){
      c_cases <- cbind(id = id[i],nobs = sum(complete.cases(nobs_data)))    
    } else {
      c_cases <- rbind(c_cases, c(id[i],sum(complete.cases(nobs_data))))
    }
  }
  as.data.frame(c_cases)
}