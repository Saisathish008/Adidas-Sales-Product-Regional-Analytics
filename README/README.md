# Adidas - Sales, Product & Regional Performance Analytics

## Project Information

**Project Title:** <br>
&nbsp;&nbsp;&nbsp;&nbsp;Adidas Sales Analysis

**Industry:** <br>
&nbsp;&nbsp;&nbsp;&nbsp;Retail / Sportswear - Adidas

**Problem Statement:** <br>
&nbsp;&nbsp;&nbsp;&nbsp;Retail sales data can be difficult to interpret across product categories, sales regions, customer segments, and returns or promotions. This project organizes the available data into an analysis workflow to help explore performance patterns and support data-informed business decisions.

**Project Objectives:**
- Analyze sales performance across product categories and regions.
- Compare customer segments, including gender and age categories where available.
- Explore product-level performance and sales contribution.
- Review returns and promotion-related patterns where the dataset contains those fields.
- Present key performance indicators and comparisons in an interactive Power BI report.<br>

**Proposed Solution / Business Questions:** <br>
&nbsp;&nbsp;&nbsp;&nbsp;Use SQL for data preparation and querying where applicable, then use Power BI to model and visualize the data.

Questions include: 
- Which products perform best?  
- How does performance vary by region?  
- Which customer segments contribute to sales?  
- What patterns appear in returns and promotions?<br>

**Dataset Name:** <br>
&nbsp;&nbsp;&nbsp;&nbsp;Adidas(Cleaned) - Sales, Product & Regional Performance Analytics  

**Dataset Source:** <br>
&nbsp;&nbsp;&nbsp;&nbsp;Adidas(Raw) - Sales, Product & Regional Performance Analytics  

**Database Name:** <br>
&nbsp;&nbsp;&nbsp;&nbsp;new_project  

**Table Names:** <br>
&nbsp;&nbsp;&nbsp;&nbsp;project  

## Tools & Technologies

- **MySQL / SQL**
- **Power BI Desktop**
- **Power Query**
- **DAX**
- **CSV**

## Project Overview

&nbsp;&nbsp;&nbsp;&nbsp;This project explores Adidas sales data through a multi-page Power BI report. The report is organized into five pages: **Sales Overview**, **Product Performance**, **Regional Analysis**, **Customer Insights**, and **Returns & Promotions**.

&nbsp;&nbsp;&nbsp;&nbsp;The goal is to make sales and customer patterns easier to explore through a consistent report layout. SQL can be used to prepare and analyze the source data before it is loaded into Power BI. Power BI can then support interactive exploration through report visuals, measures, and filters. The analysis may help identify areas for further investigation, but any business conclusion should be based on verified results from the dataset.

## Project Objectives

1. Review overall sales performance and key indicators.
2. Compare performance across product types.
3. Explore regional sales patterns.
4. Understand customer distribution and segment-level differences.
5. Examine return reasons and promotion-related metrics where available.
6. Communicate findings through a navigable Power BI report.

## Dataset Information

| Item | Details |
|---|---|
| Dataset name | Adidas(Cleaned) - Sales, Product & Regional Performance Analytics |
| Source / URL | Adidas(Raw) - Sales, Product & Regional Performance Analytics |
| Number of rows | 12,650 |
| Number of columns | 25 |
| File format | CSV |
| MySQL database | new_project |
| Main table(s) | adidas |

**Fields referenced during project planning** include product type, gender, age category, region/zone, and return reason. Keep only fields that exist in the final dataset, and add other important columns such as date, sales, units, price, or promotion fields if present.

## Project Workflow

**Industry Selection → Problem Identification → Dataset Collection → MySQL Database Setup → Data Cleaning & Transformation Using SQL → SQL Data Analysis → Power BI Data Modeling → Dashboard Development → Insights & Recommendations**

## SQL Analysis

&nbsp;&nbsp;&nbsp;&nbsp;SQL was used to create the project database and Adidas sales table, perform data-quality checks, and analyze overall sales, product performance, regional performance, payment methods, and monthly sales trends.

**1. Database and table creation**<br>

- Created the **new_project** database.  
- Selected the database using USE **new_project**.  
- Created the **adidas** table with columns for orders, customers, dates, geography, products, sales, costs, profits, returns, ratings, membership levels, and promotional codes.  
- Defined appropriate data types, including **VARCHAR**, **DATE**, **INT**, and **DECIMAL**.  
- Defined **Order_ID** as the primary key.<br>

**2. Data Quality Checks**  

- Retrieved records using **SELECT * FROM adidas**.  
- Checked for duplicate order IDs using **GROUP BY** and **HAVING COUNT(*) > 1**.
- Counted missing values in selected columns, including **Customer_ID**, **Order_Date**, **Product_Type**, **Sales_Revenue**, **Profit**, and **Promo_Code**.
- Identified the earliest and latest order dates using **MIN()** and **MAX()**.
  
**3. Overall Sales Performance**  

Calculated key business metrics using aggregate functions:  

- Total number of orders using **COUNT(*)**.  
- Total units sold using **SUM(Units_Sold)**.  
- Total sales revenue using **SUM(Sales_Revenue)**.  
- Total cost using **SUM(Cost**).
- Total profit using **SUM(Profit)**.
- Average customer rating using **AVG(Customer_Rating)**.  

**4. Product Performance Analysis**  

- Grouped sales by **Product_Category** using **GROUP BY**.  
- Calculated total units sold, total sales revenue, and total profit for each category.
- Ranked product categories by sales revenue using **ORDER BY total_sales DESC**.

**5. Regional Performance Analysis**  

- Grouped data by **Zone** and **Country**.  
- Calculated total sales revenue and profit for each zone-country combination.  
- Sorted regional results by total sales revenue in descending order.  

**6. Payment Method Analysis**  

- Grouped orders by Payment_Method.
- Calculated order counts and total sales for each payment method.
- Sorted the results to compare sales performance across payment methods.

**7. Monthly Sales and Profit Trends**  

- Extracted the year and month from **Order_Date** using **YEAR()** and **MONTH()**.
- Aggregated monthly sales revenue and profit.
- Grouped results by year and month.
- Sorted the results chronologically to support trend analysis.

**8. Dataset Summary**
  
Created a summary query to calculate:  

- Total rows and distinct order IDs.
- Distinct customers, product categories, and countries.
- First and last order dates.
- Total sales revenue and total profit.  

### SQL Techniques Used  

- `CREATE DATABASE`  
- `CREATE TABLE`  
- `USE`  
- `SELECT`  
- `COUNT()`  
- `DISTINCT`  
- `SUM()`  
- `AVG()`  
- `MIN()`  
- `MAX()`  
- `GROUP BY`  
- `HAVING`  
- `ORDER BY`  
- `YEAR()`  
- `MONTH()`  

## Power BI Dashboard

The supplied Power BI report contains the following pages:

### 1. Sales Overview
Provides a high-level summary of overall sales and profitability.  

**Available metrics for analysis:**  
- Total Sales Revenue  
- Total Orders  
- Total Units Sold  
- Total Cost  
- Total Profit  
- Profit Margin %  

**Potential visualizations:** KPI cards, monthly sales trend, sales by product category, and sales by region.  

### 2. Product Performance
Focuses on comparing product categories and types to identify sales and profitability patterns.  

**Available metrics for analysis:**
- Sales Revenue by Product Type  
- Units Sold by Product Type  
- Profit by Product Category  
- Product Category Contribution to Sales  

**Potential visualizations:** Bar charts, column charts, and product comparison tables.  

### 3. Regional Analysis
Supports geographical comparisons of sales and profitability across the available zones, countries, and cities.  

**Available metrics for analysis:**  
- Sales Revenue by Zone  
- Sales Revenue by Country  
- Profit by Region  
- Units Sold by Geographic Area  

**Potential visualizations:** Map, bar chart, and regional comparison charts.  

### 4. Customer Insights
Explores customer characteristics and purchasing patterns using the customer-related fields available in the dataset.  

**Available fields and metrics for analysis:**  
- Gender  
- Age Category  
- Membership Level  
- Customer Rating  
- Customer Count  
- Sales by Customer Segment  

Potential visualizations: Donut charts, bar charts, KPI cards, and customer-segment comparisons.  

### 5. Returns & Promotions
Examines product returns and promotional activity to support return monitoring and discount-related analysis.  

**Available fields and metrics for analysis:**  
- Return Units  
- Return Amount  
- Return Reason  
- Discount Percentage  
- Promo Code  
- Membership Level  
- Orders associated with promotional codes  

**Potential visualizations:** Return KPI cards, return-reason charts, promotional-code comparisons, and return trend charts.  

### Power Query
&nbsp;&nbsp;&nbsp;&nbsp;Power Query was used for data preparation and transformation before dashboard development.  

### DAX
&nbsp;&nbsp;&nbsp;&nbsp;DAX measures were used to create KPI and analytical metrics such as:  

- Total Sales Revenue
- Total Profit
- Total Units Sold
- Total Orders
- Total Cost
- Profit Margin %
- Average Selling Price
- Revenue per Customer
- Total Customers
- Average Customer Rating
- Total Return Units
- Total Return Amount
- Return Rate %
- Promo Code Orders  

Example measures:  

```DAX
Total Sales Revenue =
SUM('Project'[Sales_Revenue])  

Total Profit =
SUM('Project'[Profit])  

Total Units Sold =
SUM('Project'[Units_Sold])  

Total Orders =
DISTINCTCOUNT('Project'[Order_ID])  

Total Cost =
SUM('Project'[Cost])  

Profit Margin % =
DIVIDE([Total Profit], [Total Sales Revenue], 0)  

Average Selling Price =
DIVIDE([Total Sales Revenue], [Total Units Sold], 0)  

Revenue per Customer =
DIVIDE([Total Sales Revenue], [Total Customers], 0)  

Total Customers =
DISTINCTCOUNT('Project'[Customer_ID])  
```  

## Data Analysis & Visualization

The **Adidas – Sales, Product & Regional Performance Analytics** project uses SQL for data analysis and Power BI for interactive visualization.    

- **Sales Analysis:** Evaluates total sales revenue, total profit, total units sold, total orders, and monthly sales trends.
- **Product analysis:** Compares product categories, product types, and product colors using sales revenue, profit, units sold, average selling price, and profit margin.
- **Regional analysis:** Examines sales revenue, profit, and order distribution across countries and zones, supported by geographical visualization.
- **Customer analysis:** Analyzes customer counts, revenue per customer, average customer ratings, gender, age categories, and membership-level performance.
- **Returns analysis:** Evaluates returned units, return amounts, return reasons, and return performance across product categories.
- **Promotion analysis:** Examines sales revenue by promo code and explores the relationship between discount percentage, sales revenue, cost, and profit.  

## Key Insights

Key insights should be documented only after validating the results using SQL query outputs or the Power BI dashboard. The following structure can be used to record the project's findings:  

1. **Sales performance:** Identify the period with the highest or lowest sales revenue and compare sales with profit and order volume.
2. **Product performance:** Identify the best- and worst-performing product categories or types using sales revenue, profit, or units sold.
3. **Regional performance:** Compare countries and zones to identify stronger and weaker sales or profit performance.
4. **Customer segments:** Identify meaningful differences in customer distribution, revenue, ratings, or membership-level performance.
5. **Returns and promotions:** Examine the most common return reasons, categories with higher return amounts, and relationships between discounts and profitability.

## Power BI Dashboard Screenshots

### 1. Sales Overview
![Sales Overview Dashboard](Visualizations/sales_overview.png)

### 2. Product Performance
![Product Performance Dashboard](Visualizations/product_performance.png)

### 3. Regional Analysis
![Regional Analysis Dashboard](Visualizations/regional_analysis.png)

### 4. Customer Insights
![Customer Insights Dashboard](Visualizations/customer_insights.png)

### 5. Returns & Promotions
![Returns and Promotions Dashboard](Visualizations/returns_promotions.png)

## Project Folder Structure

Suggested structure — keep only files and folders that actually exist in your GitHub repository:

```text
Adidas-Sales-Product-Regional-Analytics/
├── README/
│   └──README.md
├── Dataset/
│   ├── Adidas(Raw) - Sales, Product & Regional Performance Analytics.csv
│   └── Adidas(Cleaned) - Sales, Product & Regional Performance Analytics.csv
├── SQL/
│   └── Adidas - Sales, Product & Regional Performance Analytics.sql
├── PowerBI/
│   └── Adidas_Project.pbix
├──Screenshots/
│   ├── 1. sales_overview.png
│   ├── 2. product_performance.png
│   ├── 3. regional_analysis.png
│   ├── 4. customer_insights.png
│   └── 5. returns_promotions.png
└──Documentation
    └── Adidas - Sales, Product & Regional Performance Analytics.pdf
```

## Author

- **Name:** Sathish S
- **Student ID:** AF05327409
- **Organization:** Anudip Foundation
- **Course:** DBA_AI
- **Batch Code:** ANP-D7635
