
whichMirror <- getOption("repos")

if (length(whichMirror) == 0){
  whichMirror["CRAN"] <- "http://cran.r-project.org" 
  options(repos=whichMirror)
}

actuarialPackages <- c("lubridate", "mondate", "readxl", "ggplot2", "ChainLadder", "actuar")

install.packages(actuarialPackages, dependencies=TRUE)
rm(whichMiror, actuarialPackages)
