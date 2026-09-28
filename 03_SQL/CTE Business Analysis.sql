--  Compare Category Performance with Overall Business
WITH category_analysis AS (
    SELECT
        category,
        SUM(amount) AS total_sales,
        SUM(profit) AS total_profit
    FROM sales_data
    GROUP BY category
),
overall_sales AS (
    SELECT
        SUM(amount) AS company_sales,
        SUM(profit) AS company_profit
    FROM sales_data
)
SELECT
    c.category,
    c.total_sales,
    c.total_profit,
    ROUND((c.total_sales / o.company_sales) * 100, 2) AS sales_contribution_percentage,
    ROUND((c.total_profit / o.company_profit) * 100, 2) AS profit_contribution_percentage
FROM category_analysis c
CROSS JOIN overall_sales o;

-- Identify High-Sales but Low-Profit Categories
WITH category_analysis AS (
    SELECT
        category,
        SUM(amount) AS total_sales,
        SUM(profit) AS total_profit,
        ROUND(SUM(profit) / SUM(amount) * 100, 2) AS profit_margin
    FROM sales_data
    GROUP BY category
)
SELECT *
FROM category_analysis
WHERE profit_margin < 5
ORDER BY total_sales DESC;

--  Categorize Business Performance Using CASE
WITH category_analysis AS (
    SELECT
        category,
        SUM(amount) AS total_sales,
        SUM(profit) AS total_profit
    FROM sales_data
    GROUP BY category
)
SELECT
    category,
    total_sales,
    total_profit,
    CASE
        WHEN total_profit > 10000 THEN 'High Profit'
        WHEN total_profit > 5000 THEN 'Medium Profit'
        ELSE 'Low Profit'
    END AS profit_category
FROM category_analysis;
