-- Top 10 Customers by Sales
select customer_name, sum(amount) as total_sales
from sales_data
group by customer_name
order by total_sales DESC
limit 10;

-- Top 10 Customers by Profit
select customer_name, sum(profit) as total_profit
from sales_data
group by customer_name
order by total_profit DESC
limit 10;

-- Number of Orders per Customer
select customer_name, count(distinct order_id) as total_orders
from sales_data
group by customer_name
order by total_orders DESC;

-- Average Spending per Customer
select customer_name, sum(amount) as total_sales,
count(distinct order_id) as total_orders,
round(sum(amount)/ count(distinct order_id),2) as average_spend
from sales_data
group by customer_name
order by average_spend desc;

-- Customers with Highest Purchase Frequency
SELECT
    customer_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales_data
GROUP BY customer_name
ORDER BY total_orders DESC
LIMIT 10;