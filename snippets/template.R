# R script created by Frank Soboczenski, PhD - 2018
# frank.soboczenski@kcl.ac.uk
# www.github.com/h21k
# twitter: h21k
# general script template


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