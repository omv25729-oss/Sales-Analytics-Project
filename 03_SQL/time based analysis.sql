-- How much sales did the company generate each month?
-- How much profit did the company generate each month? 
SELECT 
    year,
    month_name,
    SUM(amount) AS monthly_sales,
    SUM(profit) AS monthly_profit
FROM sales_data
GROUP BY year, month_name;

-- highest sales month?
select year,month_name,sum(amount) as monthly_sales
from sales_data
group by year,month_name
order by monthly_sales DESC
limit 1;
-- lowest sales month?
select year,month_name,sum(amount) as monthly_sales
from sales_data
group by year,month_name
order by monthly_sales ASC
limit 1;
-- highest profit month?
select year,month_name,sum(profit) as monthly_profit
from sales_data
group by year,month_name
order by monthly_profit desc
limit 1;
-- lowest profit month?
select year,month_name,sum(profit) as monthly_profit
from sales_data
group by year,month_name
order by monthly_profit ASC
limit 1;

-- CASE month
SELECT 
    year,
    month_name,
    SUM(amount) AS monthly_sales,
    sum(profit) as monthly_profit
FROM sales_data
GROUP BY year, month_name
ORDER BY year,
CASE month_name
    WHEN 'January' THEN 1
    WHEN 'February' THEN 2
    WHEN 'March' THEN 3
    WHEN 'April' THEN 4
    WHEN 'May' THEN 5
    WHEN 'June' THEN 6
    WHEN 'July' THEN 7
    WHEN 'August' THEN 8
    WHEN 'September' THEN 9
    WHEN 'October' THEN 10
    WHEN 'November' THEN 11
    WHEN 'December' THEN 12
END; 