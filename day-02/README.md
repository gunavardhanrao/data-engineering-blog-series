# Day 2 — Databricks in Action: From Unity Catalog to Business Insights

## Project Overview

For Day 2 of my Data Engineering learning journey, I worked on a hands-on **Retail Sales Analytics project using Databricks**.

The objective was to understand how different Databricks components can work together to organize data, perform SQL-based business analysis, explore data using AI, validate AI-generated results, and finally present the findings through an interactive dashboard.

## Tools & Technologies

- Databricks
- Unity Catalog
- Databricks SQL
- Databricks Genie
- Databricks AI/BI Dashboards

## Dataset

The Retail Sales Dataset contains:

- **1,000 sales records**
- **100 distinct products**
- Product, region, category, customer, payment, channel, quantity, and sales information

For the analysis, `Sales_Amount` was treated as the recorded sales revenue.

## Unity Catalog Structure

The dataset was organized using the following structure:

```text
innomatics
└── default
    └── sales_data
```

This follows the Unity Catalog hierarchy:

**Catalog → Schema → Table**

## SQL Business Analysis

I used Databricks SQL to answer five main business questions:

1. Overall sales performance
2. Top 5 products by sales revenue
3. Regional sales performance
4. Monthly sales revenue trend
5. Product category revenue contribution

### Key Results

- **Total Sales Revenue:** $5,019,265.23
- **Total Quantity Sold:** 25,355
- **Sales Records:** 1,000
- **Distinct Products:** 100
- **Top Revenue Product:** Product 1099 — $101,773.87
- **Top Region:** North — $1,369,612.51
- **Top Product Category:** Clothing — $1,313,474.36 (26.17%)

## Databricks Genie

After completing the manual SQL analysis, I explored the dataset using natural-language questions in Databricks Genie.

I compared Genie's results against my manually written SQL for:

- Regional performance
- Top five products
- Product category contribution
- Monthly sales trend

The underlying results matched my SQL findings.

The monthly analysis also demonstrated an important lesson: although Genie returned the correct monthly values, the result needed additional attention to satisfy the requirement of displaying months in chronological order.

This reinforced the importance of **validating AI-generated analysis instead of accepting it blindly**.

### Additional Genie Insight

I also compared Retail and Online sales channels:

- **Retail:** $2,560,431.30
- **Online:** $2,458,833.93

Retail generated slightly higher recorded sales revenue, although both channels contributed significantly to overall sales.

## AI/BI Dashboard

I created an interactive Databricks AI/BI Dashboard containing:

### KPI Cards
- Total Sales Revenue
- Total Quantity Sold
- Distinct Products
- Total Sales Records

### Visualizations
- Sales Revenue by Region
- Top 5 Products by Sales Revenue
- Monthly Sales Revenue Trend
- Sales Revenue by Product Category

### Interactive Filters
- Region
- Product Category
- Sales Channel

## Key Learning

This project helped me understand how **Unity Catalog, SQL, Genie, and AI/BI Dashboards** can work together within Databricks.

The biggest takeaway was that AI can accelerate analysis, but understanding the business question, validating the calculations, and interpreting the results still remain the analyst's responsibility.

## Full Technical Blog

Read the complete Day 2 implementation, SQL queries, screenshots, Genie validation, and dashboard walkthrough on Medium:

[Databricks in Action: From Unity Catalog to Business Insights with SQL, Genie & AI/BI Dashboards](https://medium.com/@gunavardhanrao8/databricks-in-action-from-unity-catalog-to-business-insights-with-sql-genie-ai-bi-dashboards-5c7154f2258f)

## Repository Structure

```text
day-02/
├── README.md
├── sql/
│   └── retail_sales_analysis.sql
├── dashboard/
│   └── retail_sales_dashboard.png
└── screenshots/
```
