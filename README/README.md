#  Adidas Sales, Product & Regional Performance Analytics
## Project Information

-   **Project Title:**
-   Adidas - Sales, Product & Regional Performance Analytics
-   **Industry:** Sportswear / Retail / E-commerce analytics
-   **Problem Statement:** Retail teams need a consistent way to examine
    sales, profit, product performance, regional contribution, customer
    segments, returns, and promotions. Without a consolidated analytical
    view, it can be harder to compare performance across these
    dimensions and identify areas that may need further investigation.
-   **Project Objectives:**
    -   Summarize sales revenue, profit, and units sold.
    -   Compare performance across geographic zones, countries, and
        cities.
    -   Evaluate product categories and product types.
    -   Explore customer demographics, membership levels, ratings, and
        payment methods.
    -   Examine return units, return amounts, and recorded return
        reasons.
    -   Explore discount and promotion patterns alongside sales and
        profitability.
    -   Present the analysis in an interactive Power BI report.
-   **Proposed Solution / Business Questions:** Use the supplied sales
    dataset and Power BI report to explore the following:
    -   Which zones contribute the most revenue?
    -   Which product types generate the highest sales?
    -   How do customer groups differ by age category and gender?
    -   Which return reasons appear most frequently?
    -   How do discounts and promotions relate to sales and profit?
    -   How do sales and other KPIs change over time?
-   **Dataset Name:** Adidas -- Sales, Product & Regional Performance
    Analytics
-   **Dataset Source:** Files supplied with this project. An
    external/public source URL was not provided.
-   **Database Name:** Not provided / not confirmed
-   **Table Names:** The CSV data is a single flat dataset. A MySQL
    table name was not provided or verified.

## Tools & Technologies

Confirmed from the supplied project files:

-   **Power BI Desktop** --- report file supplied as
    `Adidas_Project.pbix`
-   **CSV** --- raw and cleaned dataset files

SQL and MySQL are part of the intended project scope only if you have
used them separately. No SQL scripts or database export were included
with the supplied files, so they are not listed as confirmed
implementation tools here. Power Query and DAX may be used within the
Power BI report, but their specific transformations and measures should
be documented after checking the report in Power BI Desktop.

## Project Overview

This project explores a retail sales dataset containing order, customer,
product, geographic, pricing, profitability, return, payment, rating,
membership, and promotion fields. The supplied Power BI report contains
five pages: **Sales Overview**, **Product Performance**, **Regional
Analysis**, **Customer Insights**, and **Returns & Promotions**.

The analysis is intended to help users compare business performance
across these dimensions and investigate patterns that may inform further
business decisions. The report provides an analytical view; any proposed
action should be validated against business context and data quality
before implementation.

## Project Objectives

1.  Review the supplied raw and cleaned datasets.
2.  Analyze revenue, profit, units sold, and related sales measures.
3.  Compare performance by product, region, and customer segment.
4.  Examine return behavior and return reasons.
5.  Explore discount and promotion information.
6.  Communicate findings through the Power BI report.
7.  Where SQL has been implemented, document the actual database setup,
    cleaning queries, and analytical queries in the SQL section below.

## Dataset Information

### Files supplied

  -------------------------------------------------------------------------------------------------------------
  File                                                                      Description
  ------------------------------------------------------------------------- -----------------------------------
  `Adidas(Raw) - Sales, Product & Regional Performance Analytics(1).csv`    Supplied raw dataset

  `Adidas(Cleaned) - Sales, Product & Regional Performance Analytics.csv`   Supplied cleaned dataset

  `Adidas_Project.pbix`                                                     Power BI report
  -------------------------------------------------------------------------------------------------------------

### Dataset profile

The supplied raw and cleaned CSV files each contain **12,650 rows and 25
columns**. The cleaned file has **no blank cells and no fully duplicated
rows** when checked as a complete row. The date range is **1 January
2024 to 31 December 2025**.

Important columns include:

-   **Order and customer:** `Order_ID`, `Customer_ID`, `Order_Date`
-   **Geography:** `Zone`, `Country`, `City`
-   **Customer profile:** `Gender`, `Age_Category`, `Membership_Level`,
    `Customer_Rating`
-   **Product:** `Product_Category`, `Product_Type`, `Product_Color`
-   **Sales and profitability:** `Units_Sold`, `Unit_Price`,
    `Discount_Percent`, `Sales_Revenue`, `Cost`, `Profit`,
    `Profit_Margin_Percent`
-   **Returns:** `Return_Units`, `Return_Amount`, `Return_Reason`
-   **Transaction and promotion:** `Payment_Method`, `Promo_Code`

## Project Workflow

**Industry Selection → Problem Identification → Dataset Collection →
MySQL Database Setup → Data Cleaning & Transformation Using SQL → SQL
Data Analysis → Power BI Data Modeling → Dashboard Development →
Insights & Recommendations**

The CSV files and Power BI report are supplied. The MySQL setup and
SQL-analysis stages should be marked complete only after the relevant
database and SQL scripts have been created and verified.

## SQL Analysis

No SQL scripts were included in the supplied project files. Add the
actual queries here when available; do not claim that a query or
database operation was performed unless it exists in the project.

Suggested documentation headings for SQL work that you actually
complete:

-   Database and table creation
-   Data type and data quality checks
-   Missing-value and duplicate checks
-   Standardization of text categories and dates
-   Aggregate sales and profit analysis
-   Product and regional comparisons
-   Return and promotion analysis
-   Time-based sales analysis

If you used MySQL, add the actual database name, table name, SQL version
if relevant, and the names of the `.sql` files in the repository.

## Power BI Dashboard

The supplied `Adidas_Project.pbix` report includes these five report
pages:

1.  **Sales Overview**
2.  **Product Performance**
3.  **Regional Analysis**
4.  **Customer Insights**
5.  **Returns & Promotions**

The report is designed around sales, product, regional, customer,
return, and promotion analysis. For exact documentation of individual
visuals, slicers, relationships, Power Query steps, and DAX measures,
inspect the report in Power BI Desktop and list only the features
actually present.

### Recommended items to document after verification

-   Data source used by the report (CSV or database connection)
-   Power Query transformations
-   Data model and relationships
-   DAX measures and calculated columns
-   KPI cards and chart types
-   Slicers, page navigation, and interactive filters
-   Any report-level or page-level filters

## Data Analysis & Visualization

The dataset supports the following analysis areas, and the supplied
report has dedicated pages for several of them:

-   **Sales and KPI analysis:** revenue, profit, units sold, and related
    measures
-   **Product analysis:** product category and product type comparisons
-   **Regional analysis:** zone, country, and city comparisons
-   **Customer analysis:** gender, age category, membership level, and
    customer ratings
-   **Returns analysis:** return units, return amount, and return reason
-   **Promotion analysis:** discount percentage and promo code
-   **Time-based analysis:** order-date trends, where implemented in the
    report

## Key Dataset Observations

The following are calculated directly from the supplied cleaned CSV
file. They are dataset-level summaries, not claims about the real-world
Adidas business.

-   **Recorded orders:** 12,650 distinct `Order_ID` values.
-   **Distinct customers:** 450 distinct `Customer_ID` values.
-   **Total sales revenue in the file:** 1,337,214,660 (in the dataset's
    recorded monetary units).
-   **Total profit in the file:** 380,454,445.90 (in the dataset's
    recorded monetary units).
-   **Total units sold:** 321,692.
-   **Recorded return units:** 98,519.
-   **Highest-revenue zone in this dataset:** East, with 456,769,030 in
    recorded sales revenue.
-   **Highest-revenue product type in this dataset:** Running Shoes,
    with 297,327,450 in recorded sales revenue.
-   **Most frequent recorded return reason:** Quality Issue, appearing
    in 1,470 rows.

Interpret these figures in the context of the supplied dataset. In
particular, validate the meaning of monetary fields, return-unit
definitions, and the synthetic or external origin of the data before
using the figures for real business decisions.

## Power BI Dashboard Screenshots

Dashboard screenshots were not included among the supplied files. After
exporting screenshots from Power BI and adding them to your GitHub
repository, update this section with the real filenames. Example:

``` markdown
## Power BI Dashboard Screenshots

### Sales Overview
![Sales Overview](Visualizations/sales_overview.png)

### Product Performance
![Product Performance](Visualizations/product_performance.png)
```

## Project Folder Structure

The structure below reflects the three supplied files. Add folders and
files such as SQL scripts or screenshots only after those files actually
exist in your repository.

``` text
Adidas_Sales_Analytics/
├── README.md
├── Dataset/
│   ├── Adidas(Raw) - Sales, Product & Regional Performance Analytics(1).csv
│   └── Adidas(Cleaned) - Sales, Product & Regional Performance Analytics.csv
└── PowerBI/
    └── Adidas_Project.pbix
```

## Author

-   **Name:** \[Your Name\]
-   **Student ID:** \[Your Student ID\]
-   **Organization:** Anudip Foundation
-   **Course:** DBA_AI
-   **Batch Code:** \[Your Batch Code\]

------------------------------------------------------------------------

*Update the author placeholders and add verified SQL/database details,
screenshots, and any additional project files before publishing the
repository.*
