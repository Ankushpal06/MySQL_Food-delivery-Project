use fooddelivery;
-- Some Basic select Query

-- show all order shorted by newest first
	select * from orders order by order_date desc;
-- find a customer by name
	select * from customers where name = 'ankush';
-- count total number of customers 
	select count(*) as Total_customer from customers;
-- show all orders of a specific customer 
	select * from orders where customer_id=103;
-- Show all customers 
	select * from customers;
    
-- show food item with restaurant name
	select f.item_name,r.R_name as rastaurant_name from fooditem f 
	join restaurants r on f.restaurant_id = r.restaurant_id;

-- Query for the full Bill of customer
	select o.order_id ,c.name as customer_name ,f.item_name,od.quantity,f.price,
	(od.quantity * f.price) as subtotal from orders o
	join customers c on o.customer_id = c.customer_id 
	join orderdetails od on o.order_id = od.order_id
	join fooditem f on od.item_id = f.item_id where o.order_id = 201;

-- Query for check Top 3 Best-selling item
	select f.item_name, sum(od.quantity) as total_sold from orderdetails od 
	join fooditem f on od.item_id = f.item_id 
	group by f.item_name 
	order by total_sold desc limit 3;
-- Total sale of restaurants
select r.R_name as restaurant_name, 
sum(od.quantity * f.price) as Total_sales from restaurants r 
join fooditem f on r.restaurant_id = f.restaurant_id 
join orderdetails od on f.item_id = od.item_id
group by r.R_name order by Total_sales desc;

-- Query for checking Payment Status
	select o.order_id,p.payment_id,p.payment_status from orders o
	join payments p on o.order_id = p.order_id having order_id =202;
-- Monthly sales report
select date_format(o.order_date,'%y-%m') as month,
sum(od.quantity * f.price) as monthly_sales from orders o 
join orderdetails od on o.order_id = od.order_id 
join fooditem f on od.item_id = f.item_id 
group by date_format(o.order_date,'%y-%m') order by month;
-- Food items never ordered
select f.item_name
from fooditem f
left join orderdetails od on f.item_id = od.item_id
where od.order_id is null;

