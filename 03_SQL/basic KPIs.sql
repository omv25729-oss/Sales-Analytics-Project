-- kPIs to find (total sales,total profit, total quantity sold,total orders, Average order values)

select
sum(amount) as total_sales,
sum(profit) as total_profit,
sum(quantity) as total_quantity_sold,
count(distinct order_id) as total_orders,
sum(amount)/count(distinct order_id) as average_order_value
from sales_data;

 