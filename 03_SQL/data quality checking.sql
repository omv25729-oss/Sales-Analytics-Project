-- describe sales_data;

-- select * from sales_data limit 10; 

-- select count(*) as total_rows from sales_data;

-- select   
--    min(order_date) as first_order_date,
--  max(order_date) as last_order_date
-- from sales_data;

-- SELECT 
--     order_id,
--     COUNT(*) AS occurrences
-- FROM sales_data
-- GROUP BY order_id
-- HAVING COUNT(*) > 1
-- LIMIT 10;

-- select
-- sum(order_id is Null) as missing_order_id,
-- sum(amount is Null) as missing_amount,
-- sum(profit is Null) as missing_profit,
-- sum(category is Null) as missing_category,
-- sum(order_date is Null) as missing_order_date
-- from sales_data;