# R script created by Frank Soboczenski, PhD - 2018
# frank.soboczenski@kcl.ac.uk
# www.github.com/h21k
# twitter: h21k
# Summary of usefule scripts


# General housekeeping stuff
# sessionInfo() # get current running session overview (what is installed etc)
# getwd() # show the current working directory
# setwd("/Users/kenobi/Dropbox/R/HACS5/") set a specific working directory 

# load performance improvement libraries
library(compiler)
enableJIT(1)

# set environmental details
options(digits=2) # set length of decimal digit
set.seed(443) # set a random seed for reproducability

# 1: Save list of installed packages in csv then reinstall quickly from 
# that list:

installed <- as.data.frame(installed.packages())
write.csv(installed, 'installed_previously.csv')

installedPreviously <- read.csv('installed_previously.csv')
baseR <- as.data.frame(installed.packages())
toInstall <- setdiff(installedPreviously, baseR)

install.packages(toInstall)

# 2: Check if packages are installed - if not install them now!
requiredPackages = c('plyr','ggplot2','ggtern')
for(p in requiredPackages){
  if(!require(p,character.only = TRUE)) install.packages(p)
  library(p,character.only = TRUE)
}
