-- sales and profit by states
select state, sum(amount) as total_sales,sum(profit) as total_profit
from sales_data 
group by state ;

-- sales and profit by city
select city, sum(amount) as total_sales,sum(profit) as total_profit
from sales_data 
group by city ;
 
 -- best and worst performance by state
 
 select state, sum(amount) as total_sales
from sales_data 
group by state
order by total_sales DESC
limit 1 ;

 select state, sum(profit) as total_profit
from sales_data 
group by state
order by total_profit ASC
limit 1 ;

-- profit margin by state
SELECT 
    state,
    SUM(amount) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) / SUM(amount) * 100, 2) AS profit_margin_percentage
FROM sales_data
GROUP BY state
ORDER BY profit_margin_percentage DESC;

-- top 10 state
SELECT 
    state,
    SUM(amount) AS total_sales
FROM sales_data
GROUP BY state
ORDER BY total_sales DESC
LIMIT 10;
-- top 10 bottom state
SELECT 
    state,
    SUM(amount) AS total_sales
FROM sales_data
GROUP BY state
ORDER BY total_sales ASC
LIMIT 10;

-- top 10 cities
SELECT 
    city,
    SUM(amount) AS total_sales
FROM sales_data
GROUP BY city
ORDER BY total_sales DESC
LIMIT 10;