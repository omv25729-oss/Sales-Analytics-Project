# Sales Analytics Project

## Project Overview

This project analyzes sales data to understand the company's sales performance, profitability, customer behavior, product performance, and regional trends.

The project follows an end-to-end data analytics process, including data cleaning, SQL analysis, Python exploratory data analysis, and Power BI dashboard development.

The goal is to identify meaningful business insights and provide data-driven recommendations to improve sales and profitability.

## Business Problem

The company wants to understand its sales performance and identify factors affecting sales and profitability.

The analysis focuses on:

- Sales and profit trends
- Product and category performance
- Customer performance
- Regional performance
- Monthly sales trends
- Profitability
- Actual sales versus targets

The objective is to identify key business insights and provide recommendations to support better business decisions.

## Dataset

The project uses sales transaction data containing information about:

- Orders
- Sales amount
- Profit
- Quantity
- Category and sub-category
- Order date
- Customers
- State and city
- Sales targets

The raw datasets were cleaned and merged using Excel and Power Query before analysis.

## Tools Used

- Excel & Power Query — Data cleaning and transformation
- MySQL — SQL analysis and business queries
- Python — Exploratory Data Analysis (EDA)
- Power BI — Data modeling, DAX and dashboard visualization
- GitHub — Project documentation and version control

- ## Data Cleaning

The raw sales data was cleaned and prepared using Excel and Power Query.

The main steps included:

- Checked and handled missing values
- Removed duplicate records
- Standardized date formats
- Checked sales and profit values
- Standardized category and sub-category names
- Merged the order and order-detail datasets
- Created calculated fields such as Year, Month, Profit Margin, and Sales Amount
- Validated the final cleaned dataset before analysis

- ## SQL Analysis

SQL was used to analyze the cleaned sales dataset and answer key business questions.

The analysis included:

- Total sales, profit and quantity
- Monthly sales and profit trends
- Sales and profit by category
- Sales by state and city
- Top and bottom-performing products
- Top customers
- Average order value
- Profit margin by category
- Month-over-month growth
- Customer ranking
- Best and worst-performing regions

SQL techniques used included:

- GROUP BY
- CASE statements
- JOINs
- CTEs
- Subqueries
- Window functions
- RANK()
- DENSE_RANK()
- LAG()

## Python Analysis

Python was used to perform exploratory data analysis (EDA) and identify patterns and trends in the sales data.

The analysis included:

- Monthly sales and profit trends
- Category performance
- Sub-category performance
- Regional performance
- Customer analysis
- Sales and profit distributions
- Outlier analysis
- Month-over-month growth
- Data visualization

## Power BI Dashboard

Power BI was used to build an interactive sales analytics dashboard.

The dashboard includes:

- Executive Overview
- Sales and Profit KPIs
- Monthly Sales & Profit Trends
- Category & Sub-category Analysis
- Customer Analysis
- Regional Analysis
- Target vs Actual Analysis
- Interactive filters and slicers

DAX measures were created to calculate key metrics such as:

- Total Sales
- Total Profit
- Total Orders
- Total Quantity
- Average Order Value
- Profit Margin
- Sales Growth
Python libraries used included:

- Pandas
- NumPy
- Matplotlib
- Seaborn
