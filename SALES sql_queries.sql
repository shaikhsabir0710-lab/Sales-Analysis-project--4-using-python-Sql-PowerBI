                     --- SALES PERFORMANCE ANALYSIS PROJECT -4 ----


-- Table creation.
create table sales_data_updated(
Order_ID varchar(20),
Amount int,
Profit int,
Quantity int,
Category  varchar(20),
Sub_Category varchar(20),
PaymentMode char(20),
Order_Date date,
CustomerName varchar(50),
State char(50),
City varchar(50)
);

-- Problems.
-- 1. what is total sales.
-- 2.what is the total profit.
-- 3.what is the total Quantity sold.
-- 4.what is total orders.
-- 5.what is total profit by each category.
-- 6.what is total profit by each sub-category.
-- 7.what is total_profit by each paymentmethod.
-- 8.what is  total_sales by each sub-category.
-- 9.what is total profit by each top5 state.
-- 10.what is total_sales by each year.
-- 11.what is total_profit by each year.

---- PROBLEM SOLUTION-----

-- 1. what is total sales.
--SELECT SUM(amount) as total_sales from sales_data_updated;

-- 2.what is the total profit.
--select sum(profit) as total_proft from sales_data_updated;

-- 3.what is the total Quantity sold.
--select sum(quantity) as total_quantity_sold from sales_data_updated

-- 4.what is total orders.
--select  count(*) as total_orders from sales_data_updated;

-- 5.what is total profit by each category.
--select category,sum(profit) as profit_by_category from sales_data_updated group by category
--order by profit_by_category desc;

-- 6.what is total profit by each sub-category.
--select sub_category,sum(profit) as sub_category_profit from sales_data_updated
--group by sub_category order by sub_category_profit desc;

-- 7.what is total_profit by each paymentmethod.
--select paymentmode,sum(profit) as paymentmode_by_profit from sales_data_updated
--group by paymentmode order by paymentmode_by_profit desc 

-- 8.what is  total_sales by each sub-category.
--select sub_category,sum(amount) as sales_by_subcategory from sales_data_updated
--group by sub_category order by sales_by_subcategory desc;

-- 9.what is total profit by each top5 state.
--select state,sum(profit) as profit_by_state5 from sales_data_updated
--group by state order by profit_by_state5 desc limit 5;

-- 10.what is total_sales by each year.
--select extract(year from order_date) as year,sum(amount) as total_sales from sales_data_updated
--group by year order by total_sales desc;

-- 11.what is total_profit by each year.
--select extract(year from order_date) as year ,sum(profit) as total_profit_by_year
--from sales_data_updated group by year order by total_profit_by_year desc 

-- 12.what is total_profit by each month.
--select extract(month from order_date) as month,sum(profit) as profit_month_wise from sales_data_updated
--group by month order by profit_month_wise desc ;

-- 13.what is total_sales by each month.
--select extract(month from order_date) as month,sum(amount) as total_sales_month from sales_data_updated
--group by month order by total_sales_month desc 
