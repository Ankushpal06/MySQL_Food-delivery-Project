create database fooddelivery;
use fooddelivery;
create table customers(customer_id int primary key auto_increment,name varchar (10),phone varchar(15),address text);

insert into customers values(101,'ankush','6396067806','MZN'),
(102,'alok','9058845711','kamal nagar'),
(103,'nikhil','7302912945','luhari'),
(104,'lavi','9068955640','khatauli'),
(105,'kartik','7037566068','noida'),
(106,'ankit','9690564203','Delhi');

create table restaurants(restaurant_id int primary key,R_name varchar(100) ,location text);

insert into restaurants values(501,'spice hub','Delhi'),
(502,'Burger king','muzaffarnagra'),
(503,'Pizza hut','meerut'), 
(504,'Dominos','noida'),
(505,'Devrana','shamli');

create table fooditem (item_id int primary key, restaurant_id int,item_name varchar(100),price decimal(10,2));

insert into fooditem (item_id,restaurant_id,item_name,price) values
(1,501,'Paneer Tikka',220.0),
(2,501,'Veg Biryani',180.0),
(3,501,'Butter nan',40),
(4,502,'Veg Burger',100.0),
(5,502,'chicken Burger',150.0),
(6,502,'Cheese Burger',170);

insert into fooditem (item_id,restaurant_id,item_name,price) values
(7,503,'Cheese pizza',250.0),
(8,503,'veg pizza',175.0),
(9,503,'Paneer pizza',200.0),
(10,504,'Chicken pizza',220),
(11,504,'garlic bread',120.0),
(12,504,'Pasta',140.0),
(13,505,'kadhai Paneer',250.0),
(14,505,'Dosa',110.0),
(15,505,'Malai Kofta',260.0);

create table orders(order_id int auto_increment primary key ,customer_id int,order_date datetime ,
foreign key(customer_id)references customers(customer_id));

insert into orders (order_id,customer_id,order_date) values(201,101,now());
insert into orders (customer_id,order_date) values
(103,'2025-07-30 03:42:24'),
(104,'2025-07-26 04:46:24'),
(102,'2025-08-20 04:00:00');

create table orderdetails(orderdetail_id int auto_increment primary key ,order_id int,item_id int ,quantity int not null,foreign key(order_id)references orders(order_id),
foreign key(item_id)references fooditem(item_id));

insert into orderdetails(order_id,item_id,quantity) values
(201,1,2),(202,3,1),(203,2,4),(204,5,3);

create table payments (payment_id int auto_increment primary key ,order_id int,payment_method varchar(15),
payment_status varchar(10),payment_date date, foreign key(order_id) references orders(order_id));

insert into payments (payment_id,order_id,payment_method,payment_status,payment_date) values
(301,201,'cash','Paid','2025-8-30');
insert into payments (order_id,payment_method,payment_status,payment_date) values
(202,'UPI','Paid','2025-07-30'),
(203,'Card','Paid','2025-07-26'),
(204,'card','Paid','2025-08-20');





