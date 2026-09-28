-- Rank customers by total sales?
WITH customer_sales AS (
    SELECT
        customer_name,
        SUM(amount) AS total_sales
    FROM sales_data
    GROUP BY customer_name
)
SELECT
    customer_name,
    total_sales,
    RANK() OVER (ORDER BY total_sales DESC) AS sales_rank
FROM customer_sales;

-- Rank customers by total profit.
WITH customer_profit AS (
    SELECT
        customer_name,
        SUM(profit) AS total_profit
    FROM sales_data
    GROUP BY customer_name
)
SELECT
    customer_name,
    total_profit,
    RANK() OVER (ORDER BY total_profit DESC) AS profit_rank
FROM customer_profit;


-- Find the top 5 customers using ranking
WITH customer_sales AS (
    SELECT
        customer_name,
        SUM(amount) AS total_sales
    FROM sales_data
    GROUP BY customer_name
),
ranked_customers AS (
    SELECT
        customer_name,
        total_sales,
        RANK() OVER (ORDER BY total_sales DESC) AS sales_rank
    FROM customer_sales
)
SELECT *
FROM ranked_customers
WHERE sales_rank <= 5;