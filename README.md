# ETL-SQL-PowerBI-Project-18

##   Healthcare Data Pipeline & Dashboard
## Project Overview

This project demonstrates an end-to-end data engineering and analytics workflow using a healthcare dataset. The pipeline covers ETL → SQL → Power BI to build a Healthcare Dashboard with operational and financial insights.

Dataset Source: Healthcare Dataset (Kaggle)

## Project Steps
1. ETL Process

Extracted the healthcare dataset from Kaggle.

Loaded the raw data into a staging table in SQL Server:

Table Name: Healthcare_STG

Added a derived column: Load_Date (to track when the data was ingested).

2. Data Cleansing & Transformation

Created a cleansed table:

Table Name: Healthcare

Ensured consistent data types, cleaned missing values, and standardized columns.

Maintained Load_Date for data lineage and audit tracking.

3. SQL View for Analytics

Built a view over the cleansed table:

View Name: vw_healthcare

This view serves as the single source of truth for analytics and reporting.

4. Power BI Dashboard

Connected Power BI to vw_healthcare.

Developed a 2-page dashboard with key insights:

Page 1 (Demographics & Care): Patient counts, gender/blood type distribution, admission trends, average length of stay, top medical conditions.

Page 2 (Finance & Operations): Total billing, average billing per patient, billing by hospital & insurance provider, high-value patients, discharges over time, readmission rates.

## Key KPIs & DAX Measures




## Tools & Technologies

SQL Server (EPKO Database) – Staging, cleansing, and view creation.

Power BI – Data modeling, DAX measures, and visualization.

Kaggle Dataset – Healthcare records source.

## Project Structure
├── sql-scripts/
│   ├── 01_create_Healthcare_STG.sql
│   ├── 02_create_Healthcare.sql
│   ├── 03_create_vw_healthcare.sql
│
├── powerbi/
│   └── Healthcare_Dashboard.pbix
│
├── docs/
│   └── README.md   (this file)
│
└── data/
    └── healthcare-dataset.csv   (raw dataset from Kaggle)

## Deliverables

SQL Scripts (Healthcare_STG, Healthcare, vw_healthcare).

Power BI report (Healthcare Dashboard.pbix).

Documentation (this README).

## Dashboard Insights

The dashboard enables monitoring of:

Patient demographics and medical conditions.

Admission/discharge trends and hospital workload.

Billing distribution across hospitals and insurers.

## This project showcases how to design a scalable data pipeline and deliver meaningful healthcare insights using SQL + Power BI.
