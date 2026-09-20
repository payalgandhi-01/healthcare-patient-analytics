# healthcare-patient-analytics
Excel and SQL healthcare analytics project

Analyzed **54,965 healthcare patient records** by cleaning raw data in Microsoft Excel and performing SQL analysis to generate insights on patient demographics, hospital admissions, billing, and medical conditions.

## 🛠️ Tools Used

- Microsoft Excel
- MySQL

## 📊 Dataset

- **Records:** 54,965
- **Domain:** Healthcare
- **Source:** Kaggle Healthcare Dataset

## 🧹 Data Cleaning in Excel

- Removed duplicate records
- Converted the dataset into an Excel Table
- Identified missing values using `COUNTBLANK`
- Standardized inconsistent patient names using `PROPER()`
- Created a `Length_of_stay` column from admission and discharge dates

## 🗄️ SQL Analysis

Performed SQL queries to analyze:

- Total patient count
- Average length of stay by medical condition
- Top hospitals by admissions
- Billing statistics by insurance provider
- Monthly admission trends
- Test results across different age groups

## 📈 Key Findings

- Determined the total number of patients in the dataset
- Compared admission volumes across hospitals
- Identified medical conditions with longer average hospital stays
- Analyzed billing variations among insurance providers
- Examined monthly admission patterns and age-group test results

## 📁 Repository Files

- `healthcare_dataset.csv` — Raw dataset
- `healthcare_cleandataset2.xlsx` — Cleaned dataset
- `hospital_queries.sql` — MySQL analysis queries

