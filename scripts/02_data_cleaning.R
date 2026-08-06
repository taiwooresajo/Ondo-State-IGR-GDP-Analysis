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
igr <- read_excel("data/raw/igr_dataset.xlsx")
gdp <- read_excel("data/raw/gdp_dataset.xlsx")

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

# Clean year names
igr_long$Year <- substr(igr_long$Year, 1, 4)
gdp_long$Year <- substr(gdp_long$Year, 1, 4)

# Remove annual total rows
igr_long <- igr_long %>%
  filter(Month != "Total")

gdp_long <- gdp_long %>%
  filter(Month != "Total")

# Merge datasets
unique(igr_long$Year)
unique(gdp_long$Year)
data <- left_join(
  igr_long,
  gdp_long,
  by = c("Month", "Year")
)

# Convert to numeric
data$IGR <- as.numeric(data$IGR)
data$GDP <- as.numeric(data$GDP)

# Arrange data chronologically
data <- data %>%
  arrange(Year, match(Month, month.name))

# Convert to numeric
data$IGR <- as.numeric(data$IGR)
data$GDP <- as.numeric(data$GDP)
# Arrange data chronologically

month_order <- c(
  "Jan", "Feb", "Mar", "Apr",
  "May", "Jun", "Jul", "Aug",
  "Sep", "Oct", "Nov", "Dec"
)

data$Month <- factor(
  data$Month,
  levels = month_order
)

data <- data %>%
  arrange(as.numeric(Year), Month)
  
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