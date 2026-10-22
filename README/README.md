# Adidas Sales Analysis | Power BI & SQL

> An interactive sales analysis project focused on Adidas product performance, regional results, customer segments, and returns/promotions.

## Project Information

- **Project Title:** Adidas Sales Analysis
- **Industry:** Retail / Sportswear
- **Problem Statement:** Retail sales data can be difficult to interpret across product categories, sales regions, customer segments, and returns or promotions. This project organizes the available data into an analysis workflow to help explore performance patterns and support data-informed business decisions.
- **Project Objectives:**
  - Analyze sales performance across product categories and regions.
  - Compare customer segments, including gender and age categories where available.
  - Explore product-level performance and sales contribution.
  - Review returns and promotion-related patterns where the dataset contains those fields.
  - Present key performance indicators and comparisons in an interactive Power BI report.
- **Proposed Solution / Business Questions:** Use SQL for data preparation and querying where applicable, then use Power BI to model and visualize the data. Questions include: Which products perform best? How does performance vary by region? Which customer segments contribute to sales? What patterns appear in returns and promotions?
- **Dataset Name:** Adidas sales dataset *(replace with the exact source filename/name if different)*
- **Dataset Source:** Add the actual source URL or attribution here. Do not publish a source that was not used.
- **Database Name:** Add your actual MySQL database name.
- **Table Names:** Add the actual MySQL table name(s).

## Tools & Technologies

Use only the tools that were actually used in your workflow:

- **Power BI Desktop** — report development and interactive visualizations
- **Power Query** — data import and transformation, if used
- **DAX** — measures and calculations, if used
- **MySQL / SQL** — database setup, data cleaning, and analysis, if used
- **CSV / Excel** — source or intermediate files, if used

> Confirm the list above against your actual workflow before publishing. The provided `.pbix` report confirms the Power BI report, but does not by itself verify which SQL scripts, source files, or transformations were used.

## Project Overview

This project explores Adidas sales data through a multi-page Power BI report. The report is organized into five pages: **Sales Overview**, **Product Performance**, **Regional Analysis**, **Customer Insights**, and **Returns & Promotions**.

The goal is to make sales and customer patterns easier to explore through a consistent report layout. SQL can be used to prepare and analyze the source data before it is loaded into Power BI. Power BI can then support interactive exploration through report visuals, measures, and filters. The analysis may help identify areas for further investigation, but any business conclusion should be based on verified results from the dataset.

## Project Objectives

1. Review overall sales performance and key indicators.
2. Compare performance across product types.
3. Explore regional sales patterns.
4. Understand customer distribution and segment-level differences.
5. Examine return reasons and promotion-related metrics where available.
6. Communicate findings through a navigable Power BI report.

## Dataset Information

Fill in these details from the exact dataset used in the project.

| Item | Details |
|---|---|
| Dataset name | Adidas sales dataset *(confirm exact name)* |
| Source / URL | Add actual source |
| Number of rows | Add verified row count |
| Number of columns | Add verified column count |
| File format | Add actual format, e.g. CSV or Excel |
| MySQL database | Add actual database name |
| Main table(s) | Add actual table name(s) |

**Fields referenced during project planning** include product type, gender, age category, region/zone, and return reason. Keep only fields that exist in the final dataset, and add other important columns such as date, sales, units, price, or promotion fields if present.

## Project Workflow

**Industry Selection → Problem Identification → Dataset Collection → MySQL Database Setup → Data Cleaning & Transformation Using SQL → SQL Data Analysis → Power BI Data Modeling → Dashboard Development → Insights & Recommendations**

Adapt this workflow to reflect the steps actually completed. If SQL or a particular transformation was not used, remove or revise that step.

## SQL Analysis

Document the SQL operations that were actually performed. Possible items to include, if applicable:

- Database and table creation
- Data type and null-value checks
- Duplicate identification and handling
- Data standardization and cleaning
- Aggregations using `SUM()`, `COUNT()`, and `AVG()`
- Grouped analysis using `GROUP BY`
- Filtering with `WHERE` and `HAVING`
- Sorting with `ORDER BY`
- Joins, subqueries, or common table expressions (CTEs), if used
- Sales, product, regional, customer, and returns-related queries

### SQL files

Add links to the actual SQL scripts in this repository once they exist:

- `SQL/database_setup.sql`
- `SQL/data_cleaning.sql`
- `SQL/data_analysis.sql`

Do not list these files in the repository structure unless you have created and committed them.

## Power BI Dashboard

The supplied Power BI report contains the following pages:

### 1. Sales Overview
A high-level view of sales performance and headline indicators. Document the specific KPI cards, charts, and measures present in the report.

### 2. Product Performance
A product-focused page for comparing performance across product types. Add the actual metrics and visuals used.

### 3. Regional Analysis
A regional view intended to compare performance across regions or zones. Add the exact regions and visuals included in the report.

### 4. Customer Insights
A customer-focused page for exploring available customer attributes, such as gender and age category. Keep the description aligned with the fields and visuals in the report.

### 5. Returns & Promotions
A page for reviewing return and promotion-related information where available in the data. Document the actual measures and visuals shown.

### Report features

Describe only the features implemented in the `.pbix` file:

- Data source and import method: **[confirm actual source]**
- Power Query transformations: **[list actual transformations, if used]**
- Data model and relationships: **[document actual model]**
- DAX measures / calculated columns: **[list actual measures and columns]**
- KPI cards, charts, tables, matrices, slicers, and navigation: **[keep only those present]**
- Theme: dark Adidas-inspired report styling

## Data Analysis & Visualization

The report is structured to support these analysis areas, depending on the available fields and completed measures:

- **KPI analysis:** headline sales or order metrics included in the report
- **Product analysis:** comparisons between product types
- **Regional analysis:** comparisons across sales regions or zones
- **Customer analysis:** distribution by gender and age category, if present
- **Returns analysis:** return reasons and related measures, if present
- **Promotion analysis:** promotion-related comparisons, if supported by the dataset

## Key Insights

Add findings only after validating them in SQL query results or the Power BI report. Do not publish unverified figures.

Use this format:

1. **Sales performance:** [Insert the verified result and its business relevance.]
2. **Product performance:** [Name the best/worst-performing product and the metric used, if verified.]
3. **Regional performance:** [Insert the verified regional comparison.]
4. **Customer segments:** [Insert verified differences by gender or age category, if available.]
5. **Returns and promotions:** [Insert verified patterns, including the time period and metric.]

## Power BI Dashboard Screenshots

Export screenshots from Power BI Desktop and save them in the `Visualizations/` folder. Update the filenames below to match the images committed to GitHub.

### Sales Overview
![Sales Overview Dashboard](Visualizations/sales_overview.png)

### Product Performance
![Product Performance Dashboard](Visualizations/product_performance.png)

### Regional Analysis
![Regional Analysis Dashboard](Visualizations/regional_analysis.png)

### Customer Insights
![Customer Insights Dashboard](Visualizations/customer_insights.png)

### Returns & Promotions
![Returns and Promotions Dashboard](Visualizations/returns_promotions.png)

> These image paths are suggested names. The screenshots must be added to the repository using the same filenames, or the Markdown paths must be updated.

## Project Folder Structure

Suggested structure — keep only files and folders that actually exist in your GitHub repository:

```text
Adidas_Sales_Analysis/
├── README.md
├── Dataset/
│   ├── raw_dataset.csv
│   └── cleaned_dataset.csv
├── SQL/
│   ├── database_setup.sql
│   ├── data_cleaning.sql
│   └── data_analysis.sql
├── PowerBI/
│   └── Adidas_Project.pbix
└── Visualizations/
    ├── sales_overview.png
    ├── product_performance.png
    ├── regional_analysis.png
    ├── customer_insights.png
    └── returns_promotions.png
```

The structure above is a template, not a claim that all listed files were supplied. Rename files and remove entries that do not exist. The uploaded report is named `Adidas_Project(2).pbix`; rename it to `Adidas_Project.pbix` in your repository only if you choose to use that filename.

## How to View the Report

1. Download or clone this repository.
2. Open the `.pbix` file in Microsoft Power BI Desktop.
3. If Power BI requests the source data, update the data-source settings to point to your local dataset or database.
4. Refresh the report if the source is available and configured.
5. Navigate through the five report pages to explore the analysis.

## Author

- **Name:** [Your Name]
- **Student ID:** [Your Student ID]
- **Organization:** Anudip Foundation
- **Course:** DBA_AI
- **Batch Code:** [Your Batch Code]
- **Date:** [DD Month YYYY]
