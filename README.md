 Food Delivery System – Database Project
  Introduction
This project is a Food Delivery Management System built using MySQL.
It simulates how online food delivery platforms work, including customers placing orders, restaurants serving food, and payments being tracked.
The goal of this project is to practice database design, relationships, and SQL queries that answer real-world business questions.
________________________________________
 Database Design
Tables Created:
1.	Customers – stores customer details.
2.	Restaurants – stores restaurant information.
3.	FoodItems – menu items with price and restaurant reference.
4.	Orders – order information linked to customers.
5.	OrderDetails – list of items inside each order.
6.	Payments – payment status and method for each order.
	Relationships:
•	One customer → many orders.
•	One order → many order details.
•	One restaurant → many food items.
•	One order → one payment.
________________________________________
 Features Implemented
✔ Customers can place orders.
✔ Orders contain multiple food items.
✔ Restaurants supply food items.
✔ Payments are tracked with status (Paid, Pending, Failed).
✔ Reports can be generated: sales, top customers, best-selling items, etc.
________________________________________
•	Queries Implemented
The project includes 12 queries in total:
•	Basic Queries: list customers, orders, food items, payments.
•	Join Queries: show customer with their orders, full bill of an order, food items with restaurant name.
Reports & Analytics:
o	Monthly sales report
o	Best-selling food items
o	Sales per restaurant
o	Food items never ordered
________________________________________
 How to Run
1.	Open MySQL Workbench (or any MySQL client).
2.	Run the script foodDelivery_code.sql to create the database and insert sample data.
3.	Run Querys.sql to execute all the queries.
4.	Check outputs in your SQL client.
________________________________________
 Author
Ankush Kumar
 Basic Project for learning MySQL – Food Delivery System Database

