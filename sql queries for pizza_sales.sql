SELECT *
FROM pizza_sales
LIMIT 10;
## calculate all the KPIs 
	
#1. Total Revenue:
	
SELECT sum(total_price) AS Total_Revenue
FROM pizza_sales;

#2.Average Order_value:
	
select sum(total_price) / count(distinct order_id) as Avg_order_value
from pizza_sales;

#3. Total Pizzas Sold
	
select sum(total_price) / count(distinct order_id) as Avg_order_value
from pizza_sales;

#4. Total Orders placed
	
select count(distinct order_id) as total_order_placed
from pizza_sales;

#5.Average Pizzas Per Order_Value
	
select cast((sum(quantity)*1.0)/(count(distinct order_id)*1.0) as decimal (10,2)) as avg_order_value
from pizza_sales;

##calculate all the trends
	
	-- check date format for null / bad formats-- 
select *
from pizza_sales
where order_date is null
or order_date = "0000-00-00"
or order_date not regexp '^[0-9]{4}-[0-9]{2}-[0-9]{2}$';
		
	--I found some bad date formats in my raw data. here is how to fix messy date--

SELECT order_id,
       order_date,
       STR_TO_DATE(order_date, '%m/%d/%Y') AS fixed_date,
       DAY(STR_TO_DATE(order_date, '%m/%d/%Y')) AS day_of_month
FROM pizza_sales;
 		-----Alternatively------
SELECT order_id,
       order_date,
       STR_TO_DATE(order_date, '%c/%e/%Y') AS fixed_date,
       DAY(STR_TO_DATE(order_date, '%c/%e/%Y')) AS day_of_month
FROM pizza_sales;

	-- or you can just alter the table to change it to right format permanently---

alter table pizza_sales add column cleaned_order_date date;

update pizza_sales
set cleaned_order_date = str_to_date(order_date, '%c/%e/%Y')
where order_date regexp '^[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}';

##Trend charts
	
#1. Daily trends of orders
select date_format(cleaned_order_date, '%W') as order_day, count(distinct order_id) as total_orders
from pizza_sales
group by date_format(cleaned_order_date, '%W');

#2. Hourly trends of orders
	----- check order_time column format----

show columns from pizza_sales like 'order_time';

	-- text hence have to change format--

select hour(str_to_date(order_time , '%H:%i:%s')) as order_hour , count(distinct order_id) as order_count
from pizza_sales
group by hour(str_to_date(order_time , '%H:%i:%s')) 
order by hour(str_to_date(order_time , '%H:%i:%s')) ;

#3. Percentage of sales by pizza category
	
select pizza_category, 
cast(sum(total_price) as decimal(10,2)) as total_price,
cast(sum(total_price)*100 /(select sum(total_price) from pizza_sales ) as decimal(10,2)) as percentage_sales_by_category
from pizza_sales
group by pizza_category;

#4. Percentage of sales by pizza size
	
select pizza_size, cast(sum(total_price) as decimal(10,2)) as total_price, cast(sum(total_price)*100/(select sum(total_price) from pizza_sales ) as decimal(10,2)) as percentage_sale_by_size
from pizza_sales
group by pizza_size;

#5. Total pizza sold by category
select pizza_category , sum(quantity) as total_pizzas_sold
from pizza_sales
group by pizza_category;

#6. Top 5 best selling pizza
select pizza_name , sum(quantity) as most_pizza_sold
from pizza_sales
group by pizza_name
order by most_pizza_sold desc
limit 5;

#6. Bottom 5 worst selling pizza
select pizza_name , sum(quantity) as less_pizza_sold
from pizza_sales
group by pizza_name
order by less_pizza_sold asc
limit 5; 




