CREATE DATABASE new_project;

USE new_project;

CREATE TABLE adidas (
    Order_ID VARCHAR(20) PRIMARY KEY,
    Customer_ID VARCHAR(20),
    Order_Date DATE,
    Zone VARCHAR(50),
    Country VARCHAR(100),
    City VARCHAR(100),
    Gender VARCHAR(20),
    Age_Category VARCHAR(30),
    Product_Category VARCHAR(50),
    Product_Type VARCHAR(100),
    Product_Color VARCHAR(50),
    Units_Sold INT,
    Unit_Price DECIMAL(12,2),
    Discount_Percent DECIMAL(5,2),
    Sales_Revenue DECIMAL(14,2),
    Cost DECIMAL(14,2),
    Profit DECIMAL(14,2),
    Profit_Margin_Percent DECIMAL(5,2),
    Return_Units INT,
    Return_Amount DECIMAL(14,2),
    Return_Reason VARCHAR(150),
    Payment_Method VARCHAR(50),
    Customer_Rating DECIMAL(3,1),
    Membership_Level VARCHAR(50),
    Promo_Code VARCHAR(100)
);

SELECT * FROM adidas;

SELECT
    Order_ID,
    COUNT(*) AS duplicate_count
FROM adidas
GROUP BY Order_ID
HAVING COUNT(*) > 1;

SELECT
    COUNT(*) AS total_rows,
    SUM(Customer_ID IS NULL) AS missing_customer_ids,
    SUM(Order_Date IS NULL) AS missing_order_dates,
    SUM(Product_Type IS NULL) AS missing_product_types,
    SUM(Sales_Revenue IS NULL) AS missing_sales,
    SUM(Profit IS NULL) AS missing_profit,
    SUM(Promo_Code IS NULL) AS missing_promo_codes
FROM adidas;

SELECT
    MIN(Order_Date) AS first_order_date,
    MAX(Order_Date) AS last_order_date
FROM adidas;

SELECT
    COUNT(*) AS total_orders,
    SUM(Units_Sold) AS total_units_sold,
    SUM(Sales_Revenue) AS total_sales,
    SUM(Cost) AS total_cost,
    SUM(Profit) AS total_profit,
    AVG(Customer_Rating) AS average_customer_rating
FROM adidas;

SELECT
    Product_Category,
    SUM(Units_Sold) AS total_units,
    SUM(Sales_Revenue) AS total_sales,
    SUM(Profit) AS total_profit
FROM adidas
GROUP BY Product_Category
ORDER BY total_sales DESC;

SELECT
    Zone,
    Country,
    SUM(Sales_Revenue) AS total_sales,
    SUM(Profit) AS total_profit
FROM adidas
GROUP BY Zone, Country
ORDER BY total_sales DESC;

SELECT
    Payment_Method,
    COUNT(*) AS order_count,
    SUM(Sales_Revenue) AS total_sales
FROM adidas
GROUP BY Payment_Method
ORDER BY total_sales DESC;

SELECT
    YEAR(Order_Date) AS sales_year,
    MONTH(Order_Date) AS sales_month,
    SUM(Sales_Revenue) AS total_sales,
    SUM(Profit) AS total_profit
FROM adidas
GROUP BY
    YEAR(Order_Date),
    MONTH(Order_Date)
ORDER BY sales_year, sales_month;

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT Order_ID) AS unique_orders,
    COUNT(DISTINCT Customer_ID) AS unique_customers,
    COUNT(DISTINCT Product_Category) AS product_categories,
    COUNT(DISTINCT Country) AS countries,
    MIN(Order_Date) AS first_order_date,
    MAX(Order_Date) AS last_order_date,
    SUM(Sales_Revenue) AS total_sales,
    SUM(Profit) AS total_profit
FROM adidas;
