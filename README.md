# Statistical Analysis of Internally Generated Revenue (IGR) and Economic Growth (GDP) in Ondo State

## Project Overview

This project investigates the relationship between Internally Generated Revenue (IGR) and Gross Domestic Product (GDP) in Ondo State, Nigeria, using statistical and time series techniques in R.

The analysis examines revenue trends, economic growth, the relationship between IGR and GDP, and volatility behaviour using GARCH and EGARCH models.

---

## Objectives

- Examine the trend of Internally Generated Revenue (IGR).
- Assess the trend of Gross Domestic Product (GDP).
- Determine the relationship between IGR and GDP.
- Evaluate the effect of IGR on GDP using regression analysis.
- Analyse volatility using GARCH and EGARCH models.
- Forecast future values of IGR and GDP.

---

## Data

The datasets contain monthly observations for:

- Internally Generated Revenue (IGR)
- Gross Domestic Product (GDP)

Study Period:

**2015–2024**

---

## Statistical Methods

- Descriptive Statistics
- Trend Analysis
- Pearson Correlation
- Linear Regression
- Augmented Dickey-Fuller (ADF) Test
- Breusch-Pagan Test
- Durbin-Watson Test
- Shapiro-Wilk Test
- GARCH Model
- EGARCH Model
- Forecasting

## Key Findings

- Internally Generated Revenue (IGR) exhibited an overall upward trend between 2015 and 2024.
- Gross Domestic Product (GDP) also showed sustained growth during the study period.
- Pearson correlation analysis revealed a very strong positive relationship between IGR and GDP (r = 0.982, p < 0.001).
- Linear regression showed that IGR explained approximately 84.8% of the variation in GDP (R² = 0.848).
- Both IGR and GDP became stationary after first differencing based on the Augmented Dickey-Fuller (ADF) test.
- GARCH and EGARCH models were fitted to analyse and forecast volatility in the series.

---
## Software and Technologies

- R
- RStudio
- Git
- GitHub
- tidyverse
- ggplot2
- forecast
- rugarch
- tseries
- psych
- lmtest

---

## License

This project is released under the MIT License.
---

## Repository Structure

```
data/
├── raw/
└── processed/

scripts/

figures/

outputs/

docs/
```

---

## Repository Contents

- `data/` – Raw and processed datasets.
- `scripts/` – R scripts and R Markdown files used for the analysis.
- `figures/` – Charts and visualizations.
- `outputs/` – Reports and analysis outputs.
- `docs/` – Supporting project documents.
---

## Author

**Taiwo Oresajo**

Undergraduate Research Project