-- sales and profit by category
select category , sum(amount) as total_sales,
sum(profit) as total_profit
from sales_data 
group by category; 

-- quantity sold by category
select category,count(*) as total_quantity
from sales_data
group by category;

-- profit margin by category
SELECT 
    category,
    SUM(amount) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND((SUM(profit) / SUM(amount)) * 100, 2) AS profit_margin_percentage
FROM sales_data
GROUP BY category
ORDER BY profit_margin_percentage DESC;

-- Sales and Profit by Sub-Category
select category,sub_category,sum(amount) as total_sales 
from sales_data
group by category,sub_category
order by total_sales DESC;

-- best and worst performance by category
SELECT 
    category,
    SUM(amount) AS total_sales
FROM sales_data
GROUP BY category
ORDER BY total_sales DESC
LIMIT 1;

SELECT 
    category,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY category
ORDER BY total_profit ASC
LIMIT 1;

