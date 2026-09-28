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

- ## Key Insights

1. January recorded the highest monthly sales (~₹61.4K), while July recorded the lowest (~₹13.0K).
2. November recorded the highest monthly profit (~₹11.6K), with profitability improving from October onward.
3. Electronics generated the highest sales (₹165,267).
4. Clothing generated the highest profit (~₹11,163) and profit margin (8.03%).
5. Furniture had the lowest profit margin (1.81%) despite generating ₹127,181 in sales.
6. Madhya Pradesh was the highest-sales state (~₹105.1K).
7. Indore was the highest-sales city (~₹79.1K).
8. Printers were the top-selling sub-category (~₹58.3K).
9. High-value customers such as Yaanvi, Pooja, and Abhishek contributed significantly to sales.
10. Negative-profit transactions reduced overall profitability.
11. Sales were concentrated among several high-performing sub-categories.
12. Overall, the business generated ₹431,502 sales, ₹23,955 profit, 5,615 units, and 500 orders.

13. ## Business Recommendations

- Investigate low-performing months and use targeted promotions or better inventory planning.
- Analyze the factors behind the improvement in profit during the later months.
- Maintain inventory availability for high-demand Electronics products while monitoring their profitability.
- Continue focusing on high-performing Clothing products because of their strong profit margin.
- Review Furniture pricing, costs, and discounting to improve its low profit margin.
- Analyze successful products and customer segments in high-performing states such as Madhya Pradesh.
- Maintain strong product availability in high-performing cities such as Indore.
- Prioritize high-demand sub-categories such as Printers, Bookcases, and Saree.
- Develop customer retention strategies for high-value customers.
- Investigate loss-making transactions and identify ways to reduce future losses.
- Improve the performance of lower-selling sub-categories.
- Focus on improving profit margins rather than increasing sales volume alone.

- ## Power BI Dashboard

### Executive Overview
![Executive Overview](07_Final/Executive%20Overview.png)

### Customer Analysis
![Customer Analysis](07_Final/Customer%20Analysis.png)

### Product Analysis
![Product Analysis](07_Final/Product%20Analysis.png)

### Regional Analysis
![Regional Analysis](07_Final/Regional%20Analysis.png)
