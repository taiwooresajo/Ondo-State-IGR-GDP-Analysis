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

# Set working directory
# (Update this path if your project is stored elsewhere)
setwd(".")

# Import datasets
igr <- read_excel("data/raw/IGR DATASET.xlsx")

gdp <- read_excel("data/raw/GDP DATASET.xlsx")

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