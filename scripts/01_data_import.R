############################################################
# Project: Statistical Analysis of Internally Generated
# Revenue (IGR) and Economic Growth (GDP) in Ondo State
#
# File: 01_data_import.R
# Author: Taiwo Oresajo
# Purpose: Import the raw datasets into R
############################################################

# Clear workspace
rm(list = ls())

# Load required packages
library(readxl)
library(dplyr)

# Import datasets
igr <- read_excel("data/raw/igr_dataset.xlsx")

gdp <- read_excel("data/raw/gdp_dataset.xlsx")

# View first rows
head(igr)
head(gdp)

# Check structure
str(igr)
str(gdp)

# Check dimensions
dim(igr)
dim(gdp)

# Summary statistics
summary(igr)
summary(gdp)

# Check missing values
colSums(is.na(igr))
colSums(is.na(gdp))

############################################################
# End of File
############################################################