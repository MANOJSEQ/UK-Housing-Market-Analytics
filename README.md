# UK Housing Market Analytics

## Project Overview

This project analyses UK housing market data using PostgreSQL to uncover trends in property prices, property types, transaction activity, and regional housing market performance.

The analysis uses HM Land Registry Price Paid Data and focuses on transforming raw property transaction records into meaningful business insights through data validation, cleaning, and SQL analysis.

---

## Business Problem

A property investment company wants to better understand housing market trends across the UK.

The objective is to identify property market patterns, understand transaction activity, compare property types, and prepare the data for further business intelligence reporting and dashboard development.

---

## Dataset Information

Source: HM Land Registry Price Paid Data

The dataset contains property transactions recorded across England and Wales, including:

- Property Price
- Transaction Date
- Property Type
- Postcode
- Town/City
- District
- County
- Ownership Type

---

## Dataset Size

- Original Dataset: 879,386 records
- Cleaned Residential Dataset: 839,083 records

---

## Project Workflow

1. Data Import into PostgreSQL
2. Data Validation
3. Data Cleaning
4. Exploratory Data Analysis
5. Business Analysis

---

## Data Validation

The following validation checks were performed:

- Verified successful import of all records
- Reviewed sample records for accuracy
- Checked for missing postcode values
- Identified minimum, maximum, and average property prices

### Validation Results

- Total Records Imported: 879,386
- Minimum Price: £1
- Maximum Price: £793,020,000
- Average Price: £383,655

---

## Data Cleaning

A residential housing view was created to improve analytical accuracy.

Cleaning steps:

- Removed commercial and non residential transactions
- Removed ownership transfers and nominal value transactions
- Filtered prices outside the range £10,000 to £5,000,000
- Retained only:
  - Detached
  - Semi Detached
  - Terraced
  - Flats

### Cleaning Results

- Original Records: 879,386
- Residential Records: 839,083
- Average Residential Property Price: £351,770

---

## Initial Findings

### Property Type Distribution

| Property Type | Transactions |
|---------------|-------------|
| Terraced | 249,541 |
| Semi Detached | 244,963 |
| Detached | 200,678 |
| Flat | 144,344 |
| Other | 39,860 |

### New Build vs Existing Properties

- Existing Properties: 840,445
- New Build Properties: 38,941

### Ownership Type

- Freehold: 687,137
- Leasehold: 192,249

### Key Observations

- Terraced properties recorded the highest transaction volume.
- Existing properties represented the majority of housing transactions.
- Freehold properties accounted for most residential sales.
- Significant price outliers were identified and removed before residential analysis.

---

## Tools Used

- PostgreSQL
- Microsoft Excel
- HM Land Registry Price Paid Data
