--  Actual Sales vs Target by Category
SELECT
    t.category,
    SUM(s.amount) AS actual_sales,
    SUM(t.target) AS target_sales,
    SUM(s.amount) - SUM(t.target) AS variance,
    ROUND(
        SUM(s.amount) / SUM(t.target) * 100,
        2
    ) AS achievement_percentage
FROM sales_data s
JOIN sales_target t
    ON s.category = t.category
    AND date_format(s.order_date,'%b-%y') = t.month_name
GROUP BY t.category
ORDER BY achievement_percentage DESC;

-- Classify Performance
WITH target_analysis AS (
    SELECT
        t.category,
        SUM(s.amount) AS actual_sales,
        SUM(t.target) AS target_sales
    FROM sales_data s
    JOIN sales_target t
        ON s.category = t.category
         AND date_format(s.order_date,'%b-%y') = t.month_name
    GROUP BY t.category
)
SELECT
    category,
    actual_sales,
    target_sales,
    actual_sales - target_sales AS variance,
    ROUND(actual_sales / target_sales * 100, 2) AS achievement_percentage,
    CASE
        WHEN actual_sales >= target_sales THEN 'Target Achieved'
        ELSE 'Target Missed'
    END AS target_status
FROM target_analysis;

