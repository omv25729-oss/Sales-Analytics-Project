-- Top 10 Products by Sales
SELECT 
    sub_category,
    SUM(amount) AS total_sales
FROM sales_data
GROUP BY sub_category
ORDER BY total_sales DESC
LIMIT 10; 
-- bottom 10 products by sales
SELECT 
    sub_category,
    SUM(amount) AS total_sales
FROM sales_data
GROUP BY sub_category
ORDER BY total_sales asc
LIMIT 10;

-- Top 10 Products by Profit
SELECT 
    sub_category,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY sub_category
ORDER BY total_profit DESC
LIMIT 10; 

-- Bottom 10 Products by Profit
SELECT 
    sub_category,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY sub_category
ORDER BY total_profit asc
LIMIT 10; 

-- Product-wise Quantity Sold
select sub_category, sum(quantity) as product_quantity
from sales_data
group by sub_category
order by product_quantity desc;