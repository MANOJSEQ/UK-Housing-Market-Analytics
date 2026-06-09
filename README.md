# UK Housing Market Analytics

## Project Overview

This project analyses UK housing market data using SQL and Power BI to uncover trends in property prices, regional performance, transaction activity, and investment opportunities.

The analysis is based on HM Land Registry Price Paid Data and focuses on transforming raw property transaction records into meaningful business insights through data cleaning, SQL analysis, and interactive Power BI dashboards.

## Dataset Size

The 2025 HM Land Registry Price Paid dataset used in this project contains **879,386 property transaction records**.

## Objectives

- Analyse property price trends across the UK
- Compare regional housing market performance
- Identify the most expensive and affordable areas
- Evaluate property types and transaction activity
- Develop an interactive Power BI dashboard for decision making

## Data Cleaning

To improve analytical accuracy, a cleaned residential dataset was created using a PostgreSQL view.

The cleaning process:

- Removed commercial and non residential property transactions
- Excluded ownership transfers and nominal value transactions
- Filtered property prices outside the £10,000 to £5,000,000 range
- Retained only detached, semi detached, terraced and flat properties

Results:

- Original transactions: 879,386
- Cleaned residential transactions: 839,083

## Tools Used

- PostgreSQL
- Power BI
- Microsoft Excel
- HM Land Registry Price Paid Data
