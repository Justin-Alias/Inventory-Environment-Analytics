# Inventory Environment Migration & Analytics Dashboard
**MySQL • SQL • Power BI • Power Query • MySQL Connector**

---

## Project Overview

This project simulates an enterprise workflow for transitioning inventory analytics from a TEST environment into a PRODUCTION environment while maintaining reporting continuity in Power BI.

The project involved:

- Building TEST and PROD environments
- Importing inventory datasets into MySQL
- Cleaning and transforming data
- Performing SQL joins for reporting preparation
- Creating Power BI dashboards
- Migrating the reporting datasource from MySQL Server to MySQL Database via MySQL Connector

---

## Architecture

CSV Data Sources

↓

TEST Database

↓

SQL Cleaning & LEFT JOIN Transformations

↓

Prepared Reporting Table

↓

Power BI Dashboard (TEST)

↓

PROD Database Migration

↓

MySQL Workbench + Connector

↓

Power BI Source Transition

↓

Production Dashboard Deployment

---

## Environment Setup

### TEST Environment

Created:

- `Products`
- `Test_Environment_Inventory_Dataset`

Steps:

1. Imported CSV files
2. Performed LEFT JOIN operations
3. Created reporting table
4. Connected Power BI
5. Adjusted datatypes using Power Query
6. Built dashboard

---

### Production Environment

Created:

- `Products1`
- `PROD_Environment_Inventory_Dataset`

Tasks completed:

- Imported datasets
- Removed duplicate / extra Product IDs
- Cleaned inventory records
- Structured production dataset
- Applied LEFT JOIN transformation
- Built reporting table

---

## Dashboard Features

### Page 1 — Inventory Availability Metrics

KPIs:

- Average Demand Per Day
- Average Availability Per Day
- Total Supply Shortage

Filters:

- Date Filter
- Product Filter

![Dashboard Page 1](Screenshots/Dashboard-1.png)

---

### Page 2 — Financial Impact Metrics

KPIs:

- Total Loss
- Total Profit
- Average Daily Loss

Filters:

- Date Filter
- Product Filter

![Dashboard Page 2](Screenshots/Dshboard-2.png)

---

## ETL & Transformation Workflow

SQL Tasks:

✔ Data imports

✔ LEFT JOIN preparation

✔ Reporting table creation

✔ Product cleanup

✔ Production restructuring

Power Query Tasks:

✔ Datatype conversion

✔ Data validation

✔ Report preparation

---

## Data Source Migration

Initial datasource:

MySQL Server

Migrated to:

MySQL Database via MySQL Connector + MySQL Workbench

Migration tasks:

1. Created PROD server in MySQL Workbench
2. Imported production datasets
3. Configured MySQL Connector
4. Redirected Power BI datasource
5. Re-published report using production source

---

## Technologies

- MySQL
- MySQL Workbench
- SQL
- Power BI
- Power Query
- MySQL Connector
