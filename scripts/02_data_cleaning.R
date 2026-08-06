############################################################
# Project: Statistical Analysis of Internally Generated
# Revenue (IGR) and Economic Growth (GDP) in Ondo State
#
# File: 02_data_cleaning.R
# Author: Taiwo Oresajo
# Purpose: Clean and prepare the datasets for analysis
############################################################

# Load required packages
library(readxl)
library(dplyr)
library(tidyr)

# Import raw datasets
igr <- read_excel("data/raw/IGR DATASET.xlsx")
gdp <- read_excel("data/raw/GDP DATASET.xlsx")

# Convert IGR data from wide to long format
igr_long <- igr %>%
  pivot_longer(
    cols = -Month,
    names_to = "Year",
    values_to = "IGR"
  )

# Convert GDP data from wide to long format
gdp_long <- gdp %>%
  pivot_longer(
    cols = -Month,
    names_to = "Year",
    values_to = "GDP"
  )

# Remove ".0" if present in year names
igr_long$Year <- gsub("\\.0", "", igr_long$Year)
gdp_long$Year <- gsub("\\.0", "", gdp_long$Year)

# Merge datasets
data <- left_join(
  igr_long,
  gdp_long,
  by = c("Month", "Year")
)

# Convert to numeric
data$IGR <- as.numeric(data$IGR)
data$GDP <- as.numeric(data$GDP)

# Create first differences
data$DIGR <- c(NA, diff(data$IGR))
data$DGDP <- c(NA, diff(data$GDP))

# Display first rows
head(data)

# Display structure
str(data)

# Save cleaned dataset
write.csv(
  data,
  "data/processed/cleaned_data.csv",
  row.names = FALSE
)

############################################################
# End of File
############################################################