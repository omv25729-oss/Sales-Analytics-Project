-- What were monthly sales?
with monthly_sales as ( 
select year,month_name , sum(amount) as total_sales
from sales_data
group by year,month_name )
select * from monthly_sales;

-- How much did sales increase or decrease compared to the previous month?
with monthly_sales as ( 
select year,month_name , sum(amount) as total_sales
from sales_data
group by year,month_name )
select year,month_name, total_sales,
	LAG(total_sales) over(order by year , month_name) as previous_monthly_sales
    from monthly_sales;

-- What is the month-over-month growth percentage?
with monthly_sales as ( 
select year ,MONTH(order_date) AS month_number,
        MONTHNAME(order_date) AS month_name, sum(amount) as total_sales
from sales_data
group by year,MONTH(order_date),MONTHNAME(order_date) ),
monthly_growth as ( 
select year,
	month_number,
		month_name,
        total_sales ,
        lag(total_sales) over(order by year,month_number) as previous_monthly_sales
from monthly_sales)
select year,
	month_name,
	total_sales,
	previous_monthly_sales, 
	round((total_sales-previous_monthly_sales)/(previous_monthly_sales)*100,2) as growth_rate
from monthly_growth
order by year,month_number;
