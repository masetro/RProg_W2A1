corr <- function(directory="specdata", threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  ## NOTE: Do not round the result!
  
  c_cases <- vector()
  
  # get a list of all the files in the directory
  my_path <- paste("./",directory,sep="")
  #print(dir(my_path, pattern="*.csv"))
  # loop through the files
  for(f in dir(my_path, pattern="*.csv")){
    full_file <- paste(my_path,"/",f,sep="")
    ob_data <- read.csv(full_file, header = TRUE)
   if(sum(complete.cases(ob_data)) > threshold){
     # c_cases <- rbind(c_cases,full_file)
     c_cases <- c(c_cases, cor(ob_data$sulfate,ob_data$nitrate,use="complete.obs"))
     #print(cor(ob_data$sulfate,ob_data$nitrate,use="complete.obs"))
    }
  }
  c_cases
}