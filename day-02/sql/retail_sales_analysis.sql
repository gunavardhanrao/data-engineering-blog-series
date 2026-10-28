-- ============================================================
-- Day 2: Retail Sales Analytics using Databricks SQL
-- Table: innomatics.default.sales_data
-- ============================================================


-- 1. Overall Sales Performance

SELECT
    ROUND(SUM(Sales_Amount), 2) AS Total_Sales_Revenue,
    SUM(Quantity_Sold) AS Total_Quantity_Sold,
    COUNT(*) AS Total_No_of_Transactions,
    COUNT(DISTINCT Product_ID) AS No_of_Distinct_Products
FROM innomatics.default.sales_data;


-- 2. Top Five Products by Sales Revenue

SELECT
    Product_ID,
    ROUND(SUM(Sales_Amount), 2) AS Total_Sales_Revenue,
    SUM(Quantity_Sold) AS Total_Quantity_Sold
FROM innomatics.default.sales_data
GROUP BY Product_ID
ORDER BY SUM(Sales_Amount) DESC
LIMIT 5;


-- 3. Regional Sales Performance

SELECT
    Region,
    ROUND(SUM(Sales_Amount), 2) AS Total_Sales_Revenue,
    SUM(Quantity_Sold) AS Total_Quantity_Sold
FROM innomatics.default.sales_data
GROUP BY Region
ORDER BY SUM(Sales_Amount) DESC;


-- 4. Monthly Sales Revenue Trend
-- MONTH(Sale_Date) is included to maintain chronological order.

SELECT
    DATE_FORMAT(Sale_Date, 'MMM') AS Month,
    ROUND(SUM(Sales_Amount), 2) AS Total_Sales_Revenue
FROM innomatics.default.sales_data
GROUP BY
    DATE_FORMAT(Sale_Date, 'MMM'),
    MONTH(Sale_Date)
ORDER BY
    MONTH(Sale_Date);


-- 5. Product Category Revenue Contribution

SELECT
    Product_Category,
    ROUND(SUM(Sales_Amount), 2) AS Total_Revenue,
    ROUND(
        SUM(Sales_Amount) * 100.0 /
        (
            SELECT SUM(Sales_Amount)
            FROM innomatics.default.sales_data
        ),
        2
    ) AS Percentage_Contribution
FROM innomatics.default.sales_data
GROUP BY Product_Category
ORDER BY Total_Revenue DESC;


-- ============================================================
-- Additional Analysis: Sales Channel Performance
-- ============================================================

SELECT
    Sales_Channel,
    ROUND(SUM(Sales_Amount), 2) AS Total_Sales_Revenue,
    SUM(Quantity_Sold) AS Total_Quantity_Sold,
    COUNT(*) AS Total_Sales_Records
FROM innomatics.default.sales_data
GROUP BY Sales_Channel
ORDER BY Total_Sales_Revenue DESC;
